.class Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$2;
.super Ljava/lang/Object;
.source "AwContentsClientBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->ignore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$2;->this$1:Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$2;->this$1:Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    # invokes: Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->ignoreOnUiThread()V
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->access$100(Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;)V

    .line 92
    return-void
.end method
