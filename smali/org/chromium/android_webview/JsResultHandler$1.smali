.class Lorg/chromium/android_webview/JsResultHandler$1;
.super Ljava/lang/Object;
.source "JsResultHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/JsResultHandler;->confirm(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/JsResultHandler;

.field final synthetic val$promptResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/JsResultHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lorg/chromium/android_webview/JsResultHandler$1;->this$0:Lorg/chromium/android_webview/JsResultHandler;

    iput-object p2, p0, Lorg/chromium/android_webview/JsResultHandler$1;->val$promptResult:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/android_webview/JsResultHandler$1;->this$0:Lorg/chromium/android_webview/JsResultHandler;

    # getter for: Lorg/chromium/android_webview/JsResultHandler;->mBridge:Lorg/chromium/android_webview/AwContentsClientBridge;
    invoke-static {v0}, Lorg/chromium/android_webview/JsResultHandler;->access$000(Lorg/chromium/android_webview/JsResultHandler;)Lorg/chromium/android_webview/AwContentsClientBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lorg/chromium/android_webview/JsResultHandler$1;->this$0:Lorg/chromium/android_webview/JsResultHandler;

    # getter for: Lorg/chromium/android_webview/JsResultHandler;->mBridge:Lorg/chromium/android_webview/AwContentsClientBridge;
    invoke-static {v0}, Lorg/chromium/android_webview/JsResultHandler;->access$000(Lorg/chromium/android_webview/JsResultHandler;)Lorg/chromium/android_webview/AwContentsClientBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/android_webview/JsResultHandler$1;->this$0:Lorg/chromium/android_webview/JsResultHandler;

    # getter for: Lorg/chromium/android_webview/JsResultHandler;->mId:I
    invoke-static {v1}, Lorg/chromium/android_webview/JsResultHandler;->access$100(Lorg/chromium/android_webview/JsResultHandler;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/android_webview/JsResultHandler$1;->val$promptResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/android_webview/AwContentsClientBridge;->confirmJsResult(ILjava/lang/String;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/JsResultHandler$1;->this$0:Lorg/chromium/android_webview/JsResultHandler;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/android_webview/JsResultHandler;->mBridge:Lorg/chromium/android_webview/AwContentsClientBridge;
    invoke-static {v0, v1}, Lorg/chromium/android_webview/JsResultHandler;->access$002(Lorg/chromium/android_webview/JsResultHandler;Lorg/chromium/android_webview/AwContentsClientBridge;)Lorg/chromium/android_webview/AwContentsClientBridge;

    .line 31
    return-void
.end method