.class Lorg/chromium/android_webview/JsResultHandler$2;
.super Ljava/lang/Object;
.source "JsResultHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/JsResultHandler;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/JsResultHandler;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/JsResultHandler;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/chromium/android_webview/JsResultHandler$2;->this$0:Lorg/chromium/android_webview/JsResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/android_webview/JsResultHandler$2;->this$0:Lorg/chromium/android_webview/JsResultHandler;

    # getter for: Lorg/chromium/android_webview/JsResultHandler;->mBridge:Lorg/chromium/android_webview/AwContentsClientBridge;
    invoke-static {v0}, Lorg/chromium/android_webview/JsResultHandler;->access$000(Lorg/chromium/android_webview/JsResultHandler;)Lorg/chromium/android_webview/AwContentsClientBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/chromium/android_webview/JsResultHandler$2;->this$0:Lorg/chromium/android_webview/JsResultHandler;

    # getter for: Lorg/chromium/android_webview/JsResultHandler;->mBridge:Lorg/chromium/android_webview/AwContentsClientBridge;
    invoke-static {v0}, Lorg/chromium/android_webview/JsResultHandler;->access$000(Lorg/chromium/android_webview/JsResultHandler;)Lorg/chromium/android_webview/AwContentsClientBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/android_webview/JsResultHandler$2;->this$0:Lorg/chromium/android_webview/JsResultHandler;

    # getter for: Lorg/chromium/android_webview/JsResultHandler;->mId:I
    invoke-static {v1}, Lorg/chromium/android_webview/JsResultHandler;->access$100(Lorg/chromium/android_webview/JsResultHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwContentsClientBridge;->cancelJsResult(I)V

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/JsResultHandler$2;->this$0:Lorg/chromium/android_webview/JsResultHandler;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/android_webview/JsResultHandler;->mBridge:Lorg/chromium/android_webview/AwContentsClientBridge;
    invoke-static {v0, v1}, Lorg/chromium/android_webview/JsResultHandler;->access$002(Lorg/chromium/android_webview/JsResultHandler;Lorg/chromium/android_webview/AwContentsClientBridge;)Lorg/chromium/android_webview/AwContentsClientBridge;

    .line 43
    return-void
.end method
