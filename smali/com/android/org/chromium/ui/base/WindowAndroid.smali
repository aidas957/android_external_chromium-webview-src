.class public Lcom/android/org/chromium/ui/base/WindowAndroid;
.super Ljava/lang/Object;
.source "WindowAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mApplicationContext:Landroid/content/Context;

.field protected mIntentErrors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeWindowAndroid:J

.field protected mOutstandingIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mVSyncListener:Lcom/android/org/chromium/ui/VSyncMonitor$Listener;

.field private final mVSyncMonitor:Lcom/android/org/chromium/ui/VSyncMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/org/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 50
    new-instance v0, Lcom/android/org/chromium/ui/base/WindowAndroid$1;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/ui/base/WindowAndroid$1;-><init>(Lcom/android/org/chromium/ui/base/WindowAndroid;)V

    iput-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mVSyncListener:Lcom/android/org/chromium/ui/VSyncMonitor$Listener;

    .line 74
    sget-boolean v0, Lcom/android/org/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    .line 78
    new-instance v0, Lcom/android/org/chromium/ui/VSyncMonitor;

    iget-object v1, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mVSyncListener:Lcom/android/org/chromium/ui/VSyncMonitor$Listener;

    invoke-direct {v0, p1, v1}, Lcom/android/org/chromium/ui/VSyncMonitor;-><init>(Landroid/content/Context;Lcom/android/org/chromium/ui/VSyncMonitor$Listener;)V

    iput-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lcom/android/org/chromium/ui/VSyncMonitor;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/ui/base/WindowAndroid;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/org/chromium/ui/base/WindowAndroid;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/org/chromium/ui/base/WindowAndroid;)Lcom/android/org/chromium/ui/VSyncMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/ui/base/WindowAndroid;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lcom/android/org/chromium/ui/VSyncMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/org/chromium/ui/base/WindowAndroid;JJJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/ui/base/WindowAndroid;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/android/org/chromium/ui/base/WindowAndroid;->nativeOnVSync(JJJ)V

    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeOnVSync(JJJ)V
.end method

.method private requestVSyncUpdate()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lcom/android/org/chromium/ui/VSyncMonitor;

    invoke-virtual {v0}, Lcom/android/org/chromium/ui/VSyncMonitor;->requestUpdate()V

    .line 243
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
    .line 194
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNativePointer()J
    .locals 4

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/WindowAndroid;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 289
    :cond_0
    iget-wide v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    return-wide v0
.end method

.method public isInsideVSync()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lcom/android/org/chromium/ui/VSyncMonitor;

    invoke-virtual {v0}, Lcom/android/org/chromium/ui/VSyncMonitor;->isInsideVSync()Z

    move-result v0

    return v0
.end method

.method public showCancelableIntent(Landroid/content/Intent;Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;I)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # I

    .prologue
    .line 129
    const-string v0, "WindowAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t show intent as context is not an Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, -0x1

    return v0
.end method

.method public showIntent(Landroid/content/Intent;Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/content/Intent;Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
