.class public Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;
.super Ljava/lang/Object;
.source "AwContentsClientBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwContentsClientBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientCertificateRequestCallback"
.end annotation


# instance fields
.field private mHost:Ljava/lang/String;

.field private mId:I

.field private mIsCalled:Z

.field private mPort:I

.field final synthetic this$0:Lorg/chromium/android_webview/AwContentsClientBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/android_webview/AwContentsClientBridge;ILjava/lang/String;I)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 72
    iput-object p1, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->this$0:Lorg/chromium/android_webview/AwContentsClientBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p2, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->mId:I

    .line 74
    iput-object p3, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->mHost:Ljava/lang/String;

    .line 75
    iput p4, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->mPort:I

    .line 76
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;
    .param p1, "x1"    # Ljava/security/PrivateKey;
    .param p2, "x2"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->proceedOnUiThread(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->ignoreOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->cancelOnUiThread()V

    return-void
.end method

.method private cancelOnUiThread()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->checkIfCalled()V

    .line 138
    iget-object v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->this$0:Lorg/chromium/android_webview/AwContentsClientBridge;

    # getter for: Lorg/chromium/android_webview/AwContentsClientBridge;->mLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContentsClientBridge;->access$400(Lorg/chromium/android_webview/AwContentsClientBridge;)Lorg/chromium/android_webview/ClientCertLookupTable;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->mHost:Ljava/lang/String;

    iget v3, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->mPort:I

    invoke-virtual {v0, v2, v3}, Lorg/chromium/android_webview/ClientCertLookupTable;->deny(Ljava/lang/String;I)V

    move-object v0, v1

    .line 139
    check-cast v0, [[B

    invoke-direct {p0, v1, v0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    .line 140
    return-void
.end method

.method private checkIfCalled()V
    .locals 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->mIsCalled:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The callback was already called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->mIsCalled:Z

    .line 147
    return-void
.end method

.method private ignoreOnUiThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->checkIfCalled()V

    move-object v0, v1

    .line 133
    check-cast v0, [[B

    invoke-direct {p0, v1, v0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    .line 134
    return-void
.end method

.method private proceedOnUiThread(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->checkIfCalled()V

    .line 109
    iget-object v4, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->this$0:Lorg/chromium/android_webview/AwContentsClientBridge;

    # getter for: Lorg/chromium/android_webview/AwContentsClientBridge;->mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;
    invoke-static {v4}, Lorg/chromium/android_webview/AwContentsClientBridge;->access$300(Lorg/chromium/android_webview/AwContentsClientBridge;)Lorg/chromium/net/DefaultAndroidKeyStore;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/chromium/net/DefaultAndroidKeyStore;->createKey(Ljava/security/PrivateKey;)Lorg/chromium/net/AndroidPrivateKey;

    move-result-object v3

    .line 111
    .local v3, "key":Lorg/chromium/net/AndroidPrivateKey;
    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-nez v4, :cond_1

    .line 112
    :cond_0
    const-string v4, "AwContentsClientBridge"

    const-string v6, "Empty client certificate chain?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 113
    check-cast v4, [[B

    invoke-direct {p0, v5, v4}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    .line 129
    :goto_0
    return-void

    .line 117
    :cond_1
    array-length v4, p2

    new-array v1, v4, [[B

    .line 119
    .local v1, "encodedChain":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 120
    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v4, "AwContentsClientBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not retrieve encoded certificate chain: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 124
    check-cast v4, [[B

    invoke-direct {p0, v5, v4}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_2
    iget-object v4, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->this$0:Lorg/chromium/android_webview/AwContentsClientBridge;

    # getter for: Lorg/chromium/android_webview/AwContentsClientBridge;->mLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;
    invoke-static {v4}, Lorg/chromium/android_webview/AwContentsClientBridge;->access$400(Lorg/chromium/android_webview/AwContentsClientBridge;)Lorg/chromium/android_webview/ClientCertLookupTable;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->mHost:Ljava/lang/String;

    iget v6, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->mPort:I

    invoke-virtual {v4, v5, v6, v3, v1}, Lorg/chromium/android_webview/ClientCertLookupTable;->allow(Ljava/lang/String;ILorg/chromium/net/AndroidPrivateKey;[[B)V

    .line 128
    invoke-direct {p0, v3, v1}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    goto :goto_0
.end method

.method private provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V
    .locals 7
    .param p1, "androidKey"    # Lorg/chromium/net/AndroidPrivateKey;
    .param p2, "certChain"    # [[B

    .prologue
    .line 150
    iget-object v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->this$0:Lorg/chromium/android_webview/AwContentsClientBridge;

    # getter for: Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J
    invoke-static {v0}, Lorg/chromium/android_webview/AwContentsClientBridge;->access$500(Lorg/chromium/android_webview/AwContentsClientBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->this$0:Lorg/chromium/android_webview/AwContentsClientBridge;

    iget-object v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->this$0:Lorg/chromium/android_webview/AwContentsClientBridge;

    # getter for: Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J
    invoke-static {v0}, Lorg/chromium/android_webview/AwContentsClientBridge;->access$500(Lorg/chromium/android_webview/AwContentsClientBridge;)J

    move-result-wide v2

    iget v4, p0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;->mId:I

    move-object v5, p2

    move-object v6, p1

    # invokes: Lorg/chromium/android_webview/AwContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V
    invoke-static/range {v1 .. v6}, Lorg/chromium/android_webview/AwContentsClientBridge;->access$600(Lorg/chromium/android_webview/AwContentsClientBridge;JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$3;

    invoke-direct {v0, p0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$3;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public ignore()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$2;

    invoke-direct {v0, p0}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$2;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 79
    new-instance v0, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback$1;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method
