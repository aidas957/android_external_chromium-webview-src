.class Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$3;
.super Ljava/lang/Object;
.source "AwContentsClientBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$3;->this$1:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$3;->this$1:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    # invokes: Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->cancelOnUiThread()V
    invoke-static {v0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->access$200(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;)V

    .line 101
    return-void
.end method
