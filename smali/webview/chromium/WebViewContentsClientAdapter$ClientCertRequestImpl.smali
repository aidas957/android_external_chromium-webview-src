.class Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;
.super Landroid/webkit/ClientCertRequest;
.source "WebViewContentsClientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwebview/chromium/WebViewContentsClientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientCertRequestImpl"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

.field private final mHost:Ljava/lang/String;

.field private final mKeyTypes:[Ljava/lang/String;

.field private final mPort:I

.field private final mPrincipals:[Ljava/security/Principal;


# direct methods
.method public constructor <init>(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callback"    # Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "principals"    # [Ljava/security/Principal;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    .line 801
    invoke-direct {p0}, Landroid/webkit/ClientCertRequest;-><init>()V

    .line 802
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mCallback:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    .line 803
    iput-object p2, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mKeyTypes:[Ljava/lang/String;

    .line 804
    iput-object p3, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mPrincipals:[Ljava/security/Principal;

    .line 805
    iput-object p4, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mHost:Ljava/lang/String;

    .line 806
    iput p5, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mPort:I

    .line 807
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mCallback:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->cancel()V

    .line 844
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mKeyTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mPort:I

    return v0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mPrincipals:[Ljava/security/Principal;

    return-object v0
.end method

.method public ignore()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mCallback:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->ignore()V

    .line 839
    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 833
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;->mCallback:Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 834
    return-void
.end method
