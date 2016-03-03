.class Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;->invoke(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;

.field final synthetic val$allow:Z

.field final synthetic val$origin:Ljava/lang/String;

.field final synthetic val$retain:Z


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;ZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 2057
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->this$1:Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;

    iput-boolean p2, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->val$retain:Z

    iput-boolean p3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->val$allow:Z

    iput-object p4, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->val$origin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2060
    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->val$retain:Z

    if-eqz v0, :cond_0

    .line 2061
    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->val$allow:Z

    if-eqz v0, :cond_1

    .line 2062
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->this$1:Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;

    iget-object v0, v0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mBrowserContext:Lcom/android/org/chromium/android_webview/AwBrowserContext;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$4000(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwBrowserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwBrowserContext;->getGeolocationPermissions()Lcom/android/org/chromium/android_webview/AwGeolocationPermissions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->val$origin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/android_webview/AwGeolocationPermissions;->allow(Ljava/lang/String;)V

    .line 2067
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->this$1:Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;

    iget-object v0, v0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2069
    :goto_1
    return-void

    .line 2064
    :cond_1
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->this$1:Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;

    iget-object v0, v0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mBrowserContext:Lcom/android/org/chromium/android_webview/AwBrowserContext;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$4000(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwBrowserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwBrowserContext;->getGeolocationPermissions()Lcom/android/org/chromium/android_webview/AwGeolocationPermissions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->val$origin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/android_webview/AwGeolocationPermissions;->deny(Ljava/lang/String;)V

    goto :goto_0

    .line 2068
    :cond_2
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->this$1:Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;

    iget-object v0, v0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->this$1:Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;

    iget-object v1, v1, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mNativeAwContents:J
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$800(Lcom/android/org/chromium/android_webview/AwContents;)J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->val$allow:Z

    iget-object v4, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;->val$origin:Ljava/lang/String;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/org/chromium/android_webview/AwContents;->access$4100(Lcom/android/org/chromium/android_webview/AwContents;JZLjava/lang/String;)V

    goto :goto_1
.end method
