.class Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$1;
.super Ljava/lang/Object;
.source "AwContentsClientBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

.field final synthetic val$chain:[Ljava/security/cert/X509Certificate;

.field final synthetic val$privateKey:Ljava/security/PrivateKey;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$1;->this$1:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    iput-object p2, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$1;->val$privateKey:Ljava/security/PrivateKey;

    iput-object p3, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$1;->val$chain:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$1;->this$1:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$1;->val$privateKey:Ljava/security/PrivateKey;

    iget-object v2, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$1;->val$chain:[Ljava/security/cert/X509Certificate;

    # invokes: Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->proceedOnUiThread(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    invoke-static {v0, v1, v2}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->access$000(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 83
    return-void
.end method
