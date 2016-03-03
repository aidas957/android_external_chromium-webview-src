.class Lorg/chromium/android_webview/AwContentsClientBridge$1$1;
.super Ljava/lang/Object;
.source "AwContentsClientBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwContentsClientBridge$1;->onReceiveValue(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/android_webview/AwContentsClientBridge$1;

.field final synthetic val$value:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwContentsClientBridge$1;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lorg/chromium/android_webview/AwContentsClientBridge$1$1;->this$1:Lorg/chromium/android_webview/AwContentsClientBridge$1;

    iput-object p2, p0, Lorg/chromium/android_webview/AwContentsClientBridge$1$1;->val$value:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge$1$1;->this$1:Lorg/chromium/android_webview/AwContentsClientBridge$1;

    iget-object v0, v0, Lorg/chromium/android_webview/AwContentsClientBridge$1;->this$0:Lorg/chromium/android_webview/AwContentsClientBridge;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientBridge$1$1;->val$value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lorg/chromium/android_webview/AwContentsClientBridge$1$1;->this$1:Lorg/chromium/android_webview/AwContentsClientBridge$1;

    iget v2, v2, Lorg/chromium/android_webview/AwContentsClientBridge$1;->val$id:I

    # invokes: Lorg/chromium/android_webview/AwContentsClientBridge;->proceedSslError(ZI)V
    invoke-static {v0, v1, v2}, Lorg/chromium/android_webview/AwContentsClientBridge;->access$700(Lorg/chromium/android_webview/AwContentsClientBridge;ZI)V

    .line 184
    return-void
.end method
