.class public Lorg/chromium/media/MediaDrmBridge;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaDrmBridge$PostRequestTask;,
        Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;,
        Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaCrypto:Landroid/media/MediaCrypto;

.field private mMediaCryptoSession:Ljava/nio/ByteBuffer;

.field private mMediaDrm:Landroid/media/MediaDrm;

.field private mNativeMediaDrmBridge:J

.field private mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisioningPending:Z

.field private mResetDeviceCredentialsPending:Z

.field private mSchemeUUID:Ljava/util/UUID;

.field private mSessionIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionMimeTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleSessionMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/chromium/media/MediaDrmBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/UUID;JZ)V
    .locals 4
    .param p1, "schemeUUID"    # Ljava/util/UUID;
    .param p2, "nativeMediaDrmBridge"    # J
    .param p4, "singleSessionMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    .line 167
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    .line 168
    iput-wide p2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    .line 170
    iput-boolean p4, p0, Lorg/chromium/media/MediaDrmBridge;->mSingleSessionMode:Z

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionMimeTypes:Ljava/util/HashMap;

    .line 173
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    .line 174
    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 175
    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 177
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;-><init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 178
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "privacyMode"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSingleSessionMode:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "sessionSharing"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/media/MediaDrmBridge;JI)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionClosed(JI)V

    return-void
.end method

.method static synthetic access$1100(Lorg/chromium/media/MediaDrmBridge;JI)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionError(JI)V

    return-void
.end method

.method static synthetic access$1200(Lorg/chromium/media/MediaDrmBridge;Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/chromium/media/MediaDrmBridge;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/chromium/media/MediaDrmBridge;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/chromium/media/MediaDrmBridge;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionMimeTypes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/chromium/media/MediaDrmBridge;Ljava/nio/ByteBuffer;[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # [B
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest(Ljava/nio/ByteBuffer;[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V

    return-void
.end method

.method static synthetic access$1800(Lorg/chromium/media/MediaDrmBridge;ILandroid/media/MediaDrm$KeyRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/MediaDrm$KeyRequest;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage(ILandroid/media/MediaDrm$KeyRequest;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/chromium/media/MediaDrmBridge;I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionError(I)V

    return-void
.end method

.method static synthetic access$2000(Lorg/chromium/media/MediaDrmBridge;[B)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onProvisionResponse([B)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->processPendingCreateSessionData()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/media/MediaDrmBridge;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/chromium/media/MediaDrmBridge;JILjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionCreated(JILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/media/MediaDrmBridge;JI[BLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # [B
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionMessage(JI[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/media/MediaDrmBridge;JI)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionReady(JI)V

    return-void
.end method

.method public static addKeySystemUuidMapping(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 4
    .param p0, "keySystem"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 897
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 899
    .local v0, "uuidBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 900
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 901
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 902
    invoke-static {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->nativeAddKeySystemUuidMapping(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 903
    return-void
.end method

.method private closeSession(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "session"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 266
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 268
    return-void
.end method

.method private static create([BJ)Lorg/chromium/media/MediaDrmBridge;
    .locals 9
    .param p0, "schemeUUID"    # [B
    .param p1, "nativeMediaDrmBridge"    # J

    .prologue
    .line 298
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 299
    .local v0, "cryptoScheme":Ljava/util/UUID;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 300
    :cond_0
    const/4 v2, 0x0

    .line 323
    :goto_0
    return-object v2

    .line 303
    :cond_1
    const/4 v4, 0x0

    .line 304
    .local v4, "singleSessionMode":Z
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v6, "4.4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 305
    const/4 v4, 0x1

    .line 307
    :cond_2
    const-string v6, "MediaDrmBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaDrmBridge uses "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v4, :cond_3

    const-string v5, "single"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-session mode."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v2, 0x0

    .line 312
    .local v2, "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :try_start_0
    new-instance v3, Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {v3, v0, p1, p2, v4}, Lorg/chromium/media/MediaDrmBridge;-><init>(Ljava/util/UUID;JZ)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 314
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .local v3, "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :try_start_1
    const-string v5, "MediaDrmBridge"

    const-string v6, "MediaDrmBridge successfully created."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 321
    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_0

    .line 307
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :cond_3
    const-string v5, "multiple"

    goto :goto_1

    .line 315
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Landroid/media/UnsupportedSchemeException;
    :goto_2
    const-string v5, "MediaDrmBridge"

    const-string v6, "Unsupported DRM scheme"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 317
    .end local v1    # "e":Landroid/media/UnsupportedSchemeException;
    :catch_1
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    const-string v5, "MediaDrmBridge"

    const-string v6, "Failed to create MediaDrmBridge"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 319
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/IllegalStateException;
    :goto_4
    const-string v5, "MediaDrmBridge"

    const-string v6, "Failed to create MediaDrmBridge"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 319
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_4

    .line 317
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_3

    .line 315
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_2
.end method

.method private createMediaCrypto()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v3, :cond_0

    .line 229
    :goto_0
    return v2

    .line 199
    :cond_0
    sget-boolean v3, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 200
    :cond_1
    sget-boolean v3, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 201
    :cond_2
    sget-boolean v3, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 204
    :cond_3
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    .line 205
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_4

    .line 206
    const-string v3, "MediaDrmBridge"

    const-string v4, "Cannot create MediaCrypto Session."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_4
    const-string v3, "MediaDrmBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaCrypto Session created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    invoke-static {v3}, Landroid/media/MediaCrypto;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 214
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 215
    .local v1, "mediaCryptoSession":[B
    new-instance v3, Landroid/media/MediaCrypto;

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    invoke-direct {v3, v4, v1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    .line 216
    const-string v3, "MediaDrmBridge"

    const-string v4, "MediaCrypto successfully created!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-wide v4, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-direct {p0, v4, v5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnMediaCryptoReady(J)V

    .line 220
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 222
    .end local v1    # "mediaCryptoSession":[B
    :cond_5
    const-string v3, "MediaDrmBridge"

    const-string v4, "Cannot create MediaCrypto for unsupported scheme."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_1
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    goto/16 :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/media/MediaCryptoException;
    const-string v3, "MediaDrmBridge"

    const-string v4, "Cannot create MediaCrypto"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private createSession(I[BLjava/lang/String;)V
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "initData"    # [B
    .param p3, "mime"    # Ljava/lang/String;

    .prologue
    .line 487
    const-string v4, "MediaDrmBridge"

    const-string v5, "createSession()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v4, :cond_0

    .line 489
    const-string v4, "MediaDrmBridge"

    const-string v5, "createSession() called when MediaDrm is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v4, :cond_2

    .line 494
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 495
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->savePendingCreateSessionData(I[BLjava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_2
    const/4 v1, 0x0

    .line 500
    .local v1, "newSessionOpened":Z
    const/4 v3, 0x0

    .line 503
    .local v3, "session":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-nez v4, :cond_4

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->createMediaCrypto()Z

    move-result v4

    if-nez v4, :cond_4

    .line 504
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionError(I)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/media/NotProvisionedException;
    const-string v4, "MediaDrmBridge"

    const-string v5, "Device not provisioned"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    if-eqz v1, :cond_3

    .line 551
    invoke-direct {p0, v3}, Lorg/chromium/media/MediaDrmBridge;->closeSession(Ljava/nio/ByteBuffer;)V

    .line 553
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->savePendingCreateSessionData(I[BLjava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V

    goto :goto_0

    .line 507
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :cond_4
    :try_start_1
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 508
    :cond_5
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 510
    :cond_6
    iget-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSingleSessionMode:Z

    if-eqz v4, :cond_7

    .line 511
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    .line 512
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 514
    const-string v4, "MediaDrmBridge"

    const-string v5, "Only one mime type is supported in single session mode."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionError(I)V

    goto/16 :goto_0

    .line 519
    :cond_7
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 520
    if-nez v3, :cond_8

    .line 521
    const-string v4, "MediaDrmBridge"

    const-string v5, "Cannot open session in createSession()."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionError(I)V

    goto/16 :goto_0

    .line 525
    :cond_8
    const/4 v1, 0x1

    .line 526
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 529
    :cond_9
    const/4 v2, 0x0

    .line 530
    .local v2, "request":Landroid/media/MediaDrm$KeyRequest;
    invoke-direct {p0, v3, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest(Ljava/nio/ByteBuffer;[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v2

    .line 531
    if-nez v2, :cond_b

    .line 532
    if-eqz v1, :cond_a

    .line 533
    invoke-direct {p0, v3}, Lorg/chromium/media/MediaDrmBridge;->closeSession(Ljava/nio/ByteBuffer;)V

    .line 535
    :cond_a
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionError(I)V

    goto/16 :goto_0

    .line 539
    :cond_b
    invoke-direct {p0, v3}, Lorg/chromium/media/MediaDrmBridge;->getWebSessionId(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/chromium/media/MediaDrmBridge;->onSessionCreated(ILjava/lang/String;)V

    .line 540
    invoke-direct {p0, p1, v2}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage(ILandroid/media/MediaDrm$KeyRequest;)V

    .line 541
    if-eqz v1, :cond_c

    .line 542
    const-string v4, "MediaDrmBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createSession(): Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Lorg/chromium/media/MediaDrmBridge;->getWebSessionId(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") created."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_c
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private getKeyRequest(Ljava/nio/ByteBuffer;[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;
    .locals 8
    .param p1, "session"    # Ljava/nio/ByteBuffer;
    .param p2, "data"    # [B
    .param p3, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    .line 422
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 423
    :cond_0
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 424
    :cond_1
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 426
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v5, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v4, 0x1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v6

    .line 429
    .local v6, "request":Landroid/media/MediaDrm$KeyRequest;
    if-eqz v6, :cond_3

    const-string v7, "successed"

    .line 430
    .local v7, "result":Ljava/lang/String;
    :goto_0
    const-string v0, "MediaDrmBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-object v6

    .line 429
    .end local v7    # "result":Ljava/lang/String;
    :cond_3
    const-string v7, "failed"

    goto :goto_0
.end method

.method private getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method private getSecurityLevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    .line 660
    const-string v0, "MediaDrmBridge"

    const-string v1, "getSecurityLevel() called when MediaDrm is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v0, 0x0

    .line 663
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "securityLevel"

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSession(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "sessionId"    # I

    .prologue
    .line 156
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 157
    .local v1, "session":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 161
    .end local v1    # "session":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getUUIDFromBytes([B)Ljava/util/UUID;
    .locals 12
    .param p0, "data"    # [B

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    .line 135
    array-length v1, p0

    if-eq v1, v11, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 146
    :goto_0
    return-object v1

    .line 138
    :cond_0
    const-wide/16 v4, 0x0

    .line 139
    .local v4, "mostSigBits":J
    const-wide/16 v2, 0x0

    .line 140
    .local v2, "leastSigBits":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_1

    .line 141
    shl-long v6, v4, v10

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    or-long v4, v6, v8

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_1
    const/16 v0, 0x8

    :goto_2
    if-ge v0, v11, :cond_2

    .line 144
    shl-long v6, v2, v10

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    or-long v2, v6, v8

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    :cond_2
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method private getWebSessionId(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5
    .param p1, "session"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 772
    const/4 v1, 0x0

    .line 774
    .local v1, "webSessionId":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "webSessionId":Ljava/lang/String;
    .local v2, "webSessionId":Ljava/lang/String;
    move-object v1, v2

    .line 780
    .end local v2    # "webSessionId":Ljava/lang/String;
    .restart local v1    # "webSessionId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "MediaDrmBridge"

    const-string v4, "getWebSessionId failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 777
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "MediaDrmBridge"

    const-string v4, "getWebSessionId failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isCryptoSchemeSupported([BLjava/lang/String;)Z
    .locals 2
    .param p0, "schemeUUID"    # [B
    .param p1, "containerMimeType"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 282
    .local v0, "cryptoScheme":Ljava/util/UUID;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v1

    .line 286
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private static native nativeAddKeySystemUuidMapping(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
.end method

.method private native nativeOnMediaCryptoReady(J)V
.end method

.method private native nativeOnResetDeviceCredentialsCompleted(JZ)V
.end method

.method private native nativeOnSessionClosed(JI)V
.end method

.method private native nativeOnSessionCreated(JILjava/lang/String;)V
.end method

.method private native nativeOnSessionError(JI)V
.end method

.method private native nativeOnSessionMessage(JI[BLjava/lang/String;)V
.end method

.method private native nativeOnSessionReady(JI)V
.end method

.method private onProvisionResponse([B)V
    .locals 5
    .param p1, "response"    # [B

    .prologue
    const/4 v4, 0x0

    .line 682
    const-string v1, "MediaDrmBridge"

    const-string v2, "onProvisionResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    sget-boolean v1, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 684
    :cond_0
    iput-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 687
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v1, :cond_2

    .line 701
    :cond_1
    :goto_0
    return-void

    .line 691
    :cond_2
    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->provideProvisionResponse([B)Z

    move-result v0

    .line 693
    .local v0, "success":Z
    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    if-eqz v1, :cond_3

    .line 694
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/media/MediaDrmBridge;->nativeOnResetDeviceCredentialsCompleted(JZ)V

    .line 695
    iput-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 698
    :cond_3
    if-eqz v0, :cond_1

    .line 699
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->resumePendingOperations()V

    goto :goto_0
.end method

.method private onSessionClosed(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 753
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$5;

    invoke-direct {v1, p0, p1}, Lorg/chromium/media/MediaDrmBridge$5;-><init>(Lorg/chromium/media/MediaDrmBridge;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 759
    return-void
.end method

.method private onSessionCreated(ILjava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "webSessionId"    # Ljava/lang/String;

    .prologue
    .line 725
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$2;-><init>(Lorg/chromium/media/MediaDrmBridge;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 731
    return-void
.end method

.method private onSessionError(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 763
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$6;

    invoke-direct {v1, p0, p1}, Lorg/chromium/media/MediaDrmBridge$6;-><init>(Lorg/chromium/media/MediaDrmBridge;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 769
    return-void
.end method

.method private onSessionMessage(ILandroid/media/MediaDrm$KeyRequest;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "request"    # Landroid/media/MediaDrm$KeyRequest;

    .prologue
    .line 734
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$3;-><init>(Lorg/chromium/media/MediaDrmBridge;ILandroid/media/MediaDrm$KeyRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    return-void
.end method

.method private onSessionReady(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 744
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$4;

    invoke-direct {v1, p0, p1}, Lorg/chromium/media/MediaDrmBridge$4;-><init>(Lorg/chromium/media/MediaDrmBridge;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 750
    return-void
.end method

.method private openSession()Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 238
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 240
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    .line 243
    .local v1, "session":[B
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 256
    .end local v1    # "session":[B
    :goto_0
    return-object v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "MediaDrmBridge"

    const-string v4, "Cannot open a new session"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    move-object v2, v3

    .line 247
    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 250
    .local v0, "e":Landroid/media/NotProvisionedException;
    throw v0

    .line 251
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :catch_2
    move-exception v0

    .line 254
    .local v0, "e":Landroid/media/MediaDrmException;
    const-string v2, "MediaDrmBridge"

    const-string v4, "Cannot open a new session"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    move-object v2, v3

    .line 256
    goto :goto_0
.end method

.method private processPendingCreateSessionData()V
    .locals 6

    .prologue
    .line 448
    const-string v4, "MediaDrmBridge"

    const-string v5, "processPendingCreateSessionData()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 454
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 456
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .line 457
    .local v2, "pendingData":Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    # invokes: Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->sessionId()I
    invoke-static {v2}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$200(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)I

    move-result v3

    .line 458
    .local v3, "sessionId":I
    # invokes: Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->initData()[B
    invoke-static {v2}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$300(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)[B

    move-result-object v0

    .line 459
    .local v0, "initData":[B
    # invokes: Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mimeType()Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$400(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "mime":Ljava/lang/String;
    invoke-direct {p0, v3, v0, v1}, Lorg/chromium/media/MediaDrmBridge;->createSession(I[BLjava/lang/String;)V

    goto :goto_0

    .line 462
    .end local v0    # "initData":[B
    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "pendingData":Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    .end local v3    # "sessionId":I
    :cond_1
    return-void
.end method

.method private release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 386
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 387
    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    .line 389
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 390
    .local v1, "session":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Lorg/chromium/media/MediaDrmBridge;->closeSession(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 392
    .end local v1    # "session":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 393
    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    .line 394
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 395
    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionMimeTypes:Ljava/util/HashMap;

    .line 398
    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    .line 400
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_1

    .line 401
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V

    .line 402
    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    .line 405
    :cond_1
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v2, :cond_2

    .line 406
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->release()V

    .line 407
    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    .line 409
    :cond_2
    return-void
.end method

.method private releaseSession(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .prologue
    .line 586
    const-string v1, "MediaDrmBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseSession(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v1, :cond_1

    .line 588
    const-string v1, "MediaDrmBridge"

    const-string v2, "releaseSession() called when MediaDrm is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->getSession(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 593
    .local v0, "session":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_2

    .line 594
    const-string v1, "MediaDrmBridge"

    const-string v2, "Invalid sessionId in releaseSession."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionError(I)V

    goto :goto_0

    .line 599
    :cond_2
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->removeKeys([B)V

    .line 602
    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSingleSessionMode:Z

    if-nez v1, :cond_0

    .line 603
    const-string v1, "MediaDrmBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->closeSession(Ljava/nio/ByteBuffer;)V

    .line 605
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionClosed(I)V

    goto :goto_0
.end method

.method private resetDeviceCredentials()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 372
    iput-boolean v3, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 373
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v1

    .line 374
    .local v1, "request":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;-><init>(Lorg/chromium/media/MediaDrmBridge;[B)V

    .line 375
    .local v0, "postTask":Lorg/chromium/media/MediaDrmBridge$PostRequestTask;
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 376
    return-void
.end method

.method private resumePendingOperations()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$1;

    invoke-direct {v1, p0}, Lorg/chromium/media/MediaDrmBridge$1;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    return-void
.end method

.method private savePendingCreateSessionData(I[BLjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "initData"    # [B
    .param p3, "mime"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string v0, "MediaDrmBridge"

    const-string v1, "savePendingCreateSessionData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;-><init>(I[BLjava/lang/String;Lorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 442
    return-void
.end method

.method private sessionExists(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p1, "session"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v0, 0x0

    .line 565
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2

    .line 566
    sget-boolean v1, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 567
    :cond_0
    const-string v1, "MediaDrmBridge"

    const-string v2, "Session doesn\'t exist because media crypto session is not created."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_1
    :goto_0
    return v0

    .line 570
    :cond_2
    sget-boolean v1, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 572
    :cond_3
    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSingleSessionMode:Z

    if-eqz v1, :cond_4

    .line 573
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 576
    :cond_4
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setSecurityLevel(Ljava/lang/String;)Z
    .locals 7
    .param p1, "securityLevel"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 333
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 356
    :cond_1
    :goto_0
    return v2

    .line 337
    :cond_2
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v5, "securityLevel"

    invoke-virtual {v4, v5}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "currentSecurityLevel":Ljava/lang/String;
    const-string v4, "MediaDrmBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security level: current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 347
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v5, "securityLevel"

    invoke-virtual {v4, v5, p1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaDrmBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set security level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const-string v2, "MediaDrmBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Security level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 356
    goto :goto_0

    .line 351
    :catch_1
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MediaDrmBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set security level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private startProvisioning()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 667
    const-string v2, "MediaDrmBridge"

    const-string v3, "startProvisioning"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 669
    :cond_0
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 670
    :cond_1
    iput-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 671
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v1

    .line 672
    .local v1, "request":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;-><init>(Lorg/chromium/media/MediaDrmBridge;[B)V

    .line 673
    .local v0, "postTask":Lorg/chromium/media/MediaDrmBridge$PostRequestTask;
    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 674
    return-void
.end method

.method private updateSession(I[B)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "key"    # [B

    .prologue
    .line 618
    const-string v2, "MediaDrmBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSession(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    .line 620
    const-string v2, "MediaDrmBridge"

    const-string v3, "updateSession() called when MediaDrm is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->getSession(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 626
    .local v1, "session":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 627
    const-string v2, "MediaDrmBridge"

    const-string v3, "Invalid session in updateSession."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionError(I)V

    goto :goto_0

    .line 634
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 641
    :goto_1
    :try_start_1
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionReady(I)V

    .line 642
    const-string v2, "MediaDrmBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key successfully added for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Landroid/media/NotProvisionedException;
    const-string v2, "MediaDrmBridge"

    const-string v3, "failed to provide key response"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :goto_2
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionError(I)V

    .line 651
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    goto :goto_0

    .line 635
    :catch_1
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "MediaDrmBridge"

    const-string v3, "Exception intentionally caught when calling provideKeyResponse()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 647
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 648
    .local v0, "e":Landroid/media/DeniedByServerException;
    const-string v2, "MediaDrmBridge"

    const-string v3, "failed to provide key response"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method provideProvisionResponse([B)Z
    .locals 4
    .param p1, "response"    # [B

    .prologue
    const/4 v1, 0x0

    .line 708
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 709
    :cond_0
    const-string v2, "MediaDrmBridge"

    const-string v3, "Invalid provision response."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :goto_0
    return v1

    .line 714
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 715
    const/4 v1, 0x1

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/media/DeniedByServerException;
    const-string v2, "MediaDrmBridge"

    const-string v3, "failed to provide provision response"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 718
    .end local v0    # "e":Landroid/media/DeniedByServerException;
    :catch_1
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MediaDrmBridge"

    const-string v3, "failed to provide provision response"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
