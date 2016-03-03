.class Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;
.super Ljava/lang/Object;
.source "AwCookieManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwCookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CookieCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/webkit/ValueCallback;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;, "Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback<TT;>;"
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;->mCallback:Landroid/webkit/ValueCallback;

    .line 190
    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;->mHandler:Landroid/os/Handler;

    .line 191
    return-void
.end method

.method public static convert(Landroid/webkit/ValueCallback;)Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/webkit/ValueCallback",
            "<TT;>;)",
            "Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<TT;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CookieCallback.convert should be called on a thread with a running Looper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    new-instance v0, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;-><init>(Landroid/webkit/ValueCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;, "Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback$1;-><init>(Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method
