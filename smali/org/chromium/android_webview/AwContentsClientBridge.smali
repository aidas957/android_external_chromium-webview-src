.class public Lorg/chromium/android_webview/AwContentsClientBridge;
.super Ljava/lang/Object;
.source "AwContentsClientBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mClient:Lorg/chromium/android_webview/AwContentsClient;

.field private mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;

.field private mLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;

.field private mNativeContentsClientBridge:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/android_webview/AwContentsClientBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/android_webview/AwContentsClientBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/android_webview/AwContentsClient;Lorg/chromium/net/DefaultAndroidKeyStore;Lorg/chromium/android_webview/ClientCertLookupTable;)V
    .locals 1
    .param p1, "client"    # Lorg/chromium/android_webview/AwContentsClient;
    .param p2, "keyStore"    # Lorg/chromium/net/DefaultAndroidKeyStore;
    .param p3, "table"    # Lorg/chromium/android_webview/ClientCertLookupTable;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-boolean v0, Lorg/chromium/android_webview/AwContentsClientBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mClient:Lorg/chromium/android_webview/AwContentsClient;

    .line 55
    iput-object p2, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;

    .line 56
    iput-object p3, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;

    .line 57
    return-void
.end method

.method static synthetic access$300(Lorg/chromium/android_webview/AwContentsClientBridge;)Lorg/chromium/net/DefaultAndroidKeyStore;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContentsClientBridge;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/android_webview/AwContentsClientBridge;)Lorg/chromium/android_webview/ClientCertLookupTable;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContentsClientBridge;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/android_webview/AwContentsClientBridge;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContentsClientBridge;

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/chromium/android_webview/AwContentsClientBridge;JI[[BLorg/chromium/net/AndroidPrivateKey;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContentsClientBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # [[B
    .param p5, "x4"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lorg/chromium/android_webview/AwContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/android_webview/AwContentsClientBridge;ZI)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContentsClientBridge;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwContentsClientBridge;->proceedSslError(ZI)V

    return-void
.end method

.method private allowCertificateError(I[BLjava/lang/String;I)Z
    .locals 4
    .param p1, "certError"    # I
    .param p2, "derBytes"    # [B
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 171
    invoke-static {p2}, Lorg/chromium/android_webview/SslUtil;->getCertificateFromDerBytes([B)Landroid/net/http/SslCertificate;

    move-result-object v1

    .line 172
    .local v1, "cert":Landroid/net/http/SslCertificate;
    if-nez v1, :cond_0

    .line 174
    const/4 v3, 0x0

    .line 189
    :goto_0
    return v3

    .line 176
    :cond_0
    invoke-static {p1, v1, p3}, Lorg/chromium/android_webview/SslUtil;->sslErrorFromNetErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    .line 177
    .local v2, "sslError":Landroid/net/http/SslError;
    new-instance v0, Lorg/chromium/android_webview/AwContentsClientBridge$1;

    invoke-direct {v0, p0, p4}, Lorg/chromium/android_webview/AwContentsClientBridge$1;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge;I)V

    .line 188
    .local v0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v3, v0, v2}, Lorg/chromium/android_webview/AwContentsClient;->onReceivedSslError(Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 189
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private handleJsAlert(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 237
    new-instance v0, Lorg/chromium/android_webview/JsResultHandler;

    invoke-direct {v0, p0, p3}, Lorg/chromium/android_webview/JsResultHandler;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge;I)V

    .line 238
    .local v0, "handler":Lorg/chromium/android_webview/JsResultHandler;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1, p1, p2, v0}, Lorg/chromium/android_webview/AwContentsClient;->handleJsAlert(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/android_webview/JsResultReceiver;)V

    .line 239
    return-void
.end method

.method private handleJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 255
    new-instance v0, Lorg/chromium/android_webview/JsResultHandler;

    invoke-direct {v0, p0, p3}, Lorg/chromium/android_webview/JsResultHandler;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge;I)V

    .line 256
    .local v0, "handler":Lorg/chromium/android_webview/JsResultHandler;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1, p1, p2, v0}, Lorg/chromium/android_webview/AwContentsClient;->handleJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/android_webview/JsResultReceiver;)V

    .line 257
    return-void
.end method

.method private handleJsConfirm(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 243
    new-instance v0, Lorg/chromium/android_webview/JsResultHandler;

    invoke-direct {v0, p0, p3}, Lorg/chromium/android_webview/JsResultHandler;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge;I)V

    .line 244
    .local v0, "handler":Lorg/chromium/android_webview/JsResultHandler;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1, p1, p2, v0}, Lorg/chromium/android_webview/AwContentsClient;->handleJsConfirm(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/android_webview/JsResultReceiver;)V

    .line 245
    return-void
.end method

.method private handleJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 249
    new-instance v0, Lorg/chromium/android_webview/JsResultHandler;

    invoke-direct {v0, p0, p4}, Lorg/chromium/android_webview/JsResultHandler;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge;I)V

    .line 250
    .local v0, "handler":Lorg/chromium/android_webview/JsResultHandler;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/chromium/android_webview/AwContentsClient;->handleJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/android_webview/JsPromptResultReceiver;)V

    .line 251
    return-void
.end method

.method private native nativeCancelJsResult(JI)V
.end method

.method private native nativeConfirmJsResult(JILjava/lang/String;)V
.end method

.method private native nativeProceedSslError(JZI)V
.end method

.method private native nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V
.end method

.method private proceedSslError(ZI)V
    .locals 4
    .param p1, "proceed"    # Z
    .param p2, "id"    # I

    .prologue
    .line 193
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/android_webview/AwContentsClientBridge;->nativeProceedSslError(JZI)V

    goto :goto_0
.end method

.method private setNativeContentsClientBridge(J)V
    .locals 1
    .param p1, "nativeContentsClientBridge"    # J

    .prologue
    .line 159
    iput-wide p1, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    .line 160
    return-void
.end method

.method private shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwContentsClient;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method cancelJsResult(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 270
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwContentsClientBridge;->nativeCancelJsResult(JI)V

    goto :goto_0
.end method

.method confirmJsResult(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "prompt"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/android_webview/AwContentsClientBridge;->nativeConfirmJsResult(JILjava/lang/String;)V

    goto :goto_0
.end method

.method protected selectClientCertificate(I[Ljava/lang/String;[[BLjava/lang/String;I)V
    .locals 14
    .param p1, "id"    # I
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "encodedPrincipals"    # [[B
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    .line 201
    sget-boolean v2, Lorg/chromium/android_webview/AwContentsClientBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-wide v6, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v12, 0x0

    cmp-long v2, v6, v12

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 202
    :cond_0
    iget-object v2, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Lorg/chromium/android_webview/ClientCertLookupTable;->getCertData(Ljava/lang/String;I)Lorg/chromium/android_webview/ClientCertLookupTable$Cert;

    move-result-object v9

    .line 203
    .local v9, "cert":Lorg/chromium/android_webview/ClientCertLookupTable$Cert;
    iget-object v2, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Lorg/chromium/android_webview/ClientCertLookupTable;->isDenied(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    iget-wide v4, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    const/4 v7, 0x0

    check-cast v7, [[B

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/chromium/android_webview/AwContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    .line 233
    :goto_0
    return-void

    .line 208
    :cond_1
    if-eqz v9, :cond_2

    .line 209
    iget-wide v4, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    iget-object v7, v9, Lorg/chromium/android_webview/ClientCertLookupTable$Cert;->mCertChain:[[B

    iget-object v8, v9, Lorg/chromium/android_webview/ClientCertLookupTable$Cert;->mPrivateKey:Lorg/chromium/net/AndroidPrivateKey;

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/chromium/android_webview/AwContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    goto :goto_0

    .line 214
    :cond_2
    const/4 v5, 0x0

    .line 215
    .local v5, "principals":[Ljava/security/Principal;
    move-object/from16 v0, p3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 216
    move-object/from16 v0, p3

    array-length v2, v0

    new-array v5, v2, [Ljavax/security/auth/x500/X500Principal;

    .line 217
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_1
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v11, v2, :cond_3

    .line 219
    :try_start_0
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p3, v11

    invoke-direct {v2, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v2, v5, v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 220
    :catch_0
    move-exception v10

    .line 221
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "AwContentsClientBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while decoding issuers list: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-wide v4, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mNativeContentsClientBridge:J

    const/4 v7, 0x0

    check-cast v7, [[B

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/chromium/android_webview/AwContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    goto :goto_0

    .line 230
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "n":I
    :cond_3
    new-instance v3, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge;ILjava/lang/String;I)V

    .line 232
    .local v3, "callback":Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;
    iget-object v2, p0, Lorg/chromium/android_webview/AwContentsClientBridge;->mClient:Lorg/chromium/android_webview/AwContentsClient;

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/chromium/android_webview/AwContentsClient;->onReceivedClientCertRequest(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;I)V

    goto :goto_0
.end method
