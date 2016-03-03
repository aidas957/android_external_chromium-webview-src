.class public Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;
.super Lcom/android/org/chromium/ui/base/WindowAndroid;
.source "ActivityWindowAndroid.java"


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mNextRequestCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method

.method private generateNextRequestCode()I
    .locals 2

    .prologue
    .line 102
    iget v1, p0, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    add-int/lit16 v0, v1, 0x3e8

    .line 103
    .local v0, "requestCode":I
    iget v1, p0, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    .line 104
    return v0
.end method

.method private storeCallbackData(ILcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "callback"    # Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public showCancelableIntent(Landroid/content/Intent;Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;I)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # I

    .prologue
    const/4 v3, -0x1

    .line 54
    iget-object v4, p0, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 55
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    move v2, v3

    .line 66
    :goto_0
    return v2

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I

    move-result v2

    .line 60
    .local v2, "requestCode":I
    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    invoke-direct {p0, v2, p2, p3}, Lcom/android/org/chromium/ui/base/ActivityWindowAndroid;->storeCallbackData(ILcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;I)V

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/ActivityNotFoundException;
    move v2, v3

    .line 62
    goto :goto_0
.end method
