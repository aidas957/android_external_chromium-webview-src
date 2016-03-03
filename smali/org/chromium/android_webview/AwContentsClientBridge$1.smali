.class Lorg/chromium/android_webview/AwContentsClientBridge$1;
.super Ljava/lang/Object;
.source "AwContentsClientBridge.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwContentsClientBridge;->allowCertificateError(I[BLjava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwContentsClientBridge;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwContentsClientBridge;I)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lorg/chromium/android_webview/AwContentsClientBridge$1;->this$0:Lorg/chromium/android_webview/AwContentsClientBridge;

    iput p2, p0, Lorg/chromium/android_webview/AwContentsClientBridge$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 180
    new-instance v0, Lorg/chromium/android_webview/AwContentsClientBridge$1$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/android_webview/AwContentsClientBridge$1$1;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge$1;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 177
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/chromium/android_webview/AwContentsClientBridge$1;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
