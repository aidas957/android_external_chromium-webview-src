.class Lcom/android/org/chromium/media/MediaCodecBridge;
.super Ljava/lang/Object;
.source "MediaCodecBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/media/MediaCodecBridge$1;,
        Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;,
        Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;,
        Lcom/android/org/chromium/media/MediaCodecBridge$DequeueInputResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAdaptivePlaybackSupported:Z

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mFlushed:Z

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mLastPresentationTimeUs:J

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMime:Ljava/lang/String;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/org/chromium/media/MediaCodecBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/media/MediaCodec;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "adaptivePlaybackSupported"    # Z

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    sget-boolean v0, Lcom/android/org/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    .line 284
    iput-object p2, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMime:Ljava/lang/String;

    .line 285
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 287
    iput-boolean p3, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    .line 288
    return-void
.end method

.method private static codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 611
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    if-nez p0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return v3

    .line 615
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 616
    .local v2, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    .line 619
    invoke-virtual {v2, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 620
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    if-eqz v0, :cond_0

    const-string v4, "adaptive-playback"

    invoke-virtual {v0, v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 622
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "MediaCodecBridge"

    const-string v5, "Cannot retrieve codec information"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private configureAudio(Landroid/media/MediaFormat;Landroid/media/MediaCrypto;IZ)Z
    .locals 11
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "crypto"    # Landroid/media/MediaCrypto;
    .param p3, "flags"    # I
    .param p4, "playAudio"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 651
    if-eqz p4, :cond_0

    .line 652
    const-string v0, "sample-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 653
    .local v2, "sampleRate":I
    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 654
    .local v7, "channelCount":I
    invoke-direct {p0, v7}, Lcom/android/org/chromium/media/MediaCodecBridge;->getAudioFormat(I)I

    move-result v3

    .line 657
    .local v3, "channelConfig":I
    const/4 v0, 0x2

    invoke-static {v2, v3, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 659
    .local v5, "minBufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    .line 661
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    .line 670
    .end local v2    # "sampleRate":I
    .end local v3    # "channelConfig":I
    .end local v5    # "minBufferSize":I
    .end local v7    # "channelCount":I
    :goto_0
    return v0

    :cond_0
    move v0, v10

    .line 666
    goto :goto_0

    .line 667
    :catch_0
    move-exception v8

    .line 668
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string v0, "MediaCodecBridge"

    const-string v1, "Cannot configure the audio codec"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v9

    .line 670
    goto :goto_0
.end method

.method private configureVideo(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)Z
    .locals 3
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "flags"    # I

    .prologue
    .line 570
    :try_start_0
    iget-boolean v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    if-eqz v1, :cond_0

    .line 571
    const-string v1, "max-width"

    const/16 v2, 0x780

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 572
    const-string v1, "max-height"

    const/16 v2, 0x438

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    const/4 v1, 0x1

    .line 579
    :goto_0
    return v1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Cannot configure the video codec"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static create(Ljava/lang/String;ZI)Lcom/android/org/chromium/media/MediaCodecBridge;
    .locals 9
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "isSecure"    # Z
    .param p2, "direction"    # I

    .prologue
    const/4 v5, 0x0

    .line 294
    if-eqz p1, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-object v5

    .line 297
    :cond_1
    const/4 v4, 0x0

    .line 298
    .local v4, "mediaCodec":Landroid/media/MediaCodec;
    const/4 v0, 0x0

    .line 301
    .local v0, "adaptivePlaybackSupported":Z
    :try_start_0
    const-string v6, "video"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 302
    invoke-static {p0}, Lcom/android/org/chromium/media/MediaCodecBridge;->getDecoderNameForMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "decoderName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 306
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_2

    .line 310
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    .line 311
    .local v3, "insecureCodec":Landroid/media/MediaCodec;
    invoke-static {v3, p0}, Lcom/android/org/chromium/media/MediaCodecBridge;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result v0

    .line 312
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 314
    .end local v3    # "insecureCodec":Landroid/media/MediaCodec;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".secure"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 328
    .end local v1    # "decoderName":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    .line 331
    new-instance v5, Lcom/android/org/chromium/media/MediaCodecBridge;

    invoke-direct {v5, v4, p0, v0}, Lcom/android/org/chromium/media/MediaCodecBridge;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;Z)V

    goto :goto_0

    .line 316
    :cond_3
    const/4 v6, 0x1

    if-ne p2, v6, :cond_4

    .line 317
    :try_start_1
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    goto :goto_1

    .line 319
    :cond_4
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 320
    invoke-static {v4, p0}, Lcom/android/org/chromium/media/MediaCodecBridge;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "MediaCodecBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create MediaCodec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSecure: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", direction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 1
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "sampleRate"    # I
    .param p2, "channelCount"    # I

    .prologue
    .line 584
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoDecoderFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 1
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 589
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoEncoderFormat(Ljava/lang/String;IIIIII)Landroid/media/MediaFormat;
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitRate"    # I
    .param p4, "frameRate"    # I
    .param p5, "iFrameInterval"    # I
    .param p6, "colorFormat"    # I

    .prologue
    .line 595
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 596
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 597
    const-string v1, "frame-rate"

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 598
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 599
    const-string v1, "color-format"

    invoke-virtual {v0, v1, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 600
    return-object v0
.end method

.method private dequeueInputBuffer(J)Lcom/android/org/chromium/media/MediaCodecBridge$DequeueInputResult;
    .locals 7
    .param p1, "timeoutUs"    # J

    .prologue
    .line 364
    const/16 v3, 0x9

    .line 365
    .local v3, "status":I
    const/4 v1, -0x1

    .line 367
    .local v1, "index":I
    :try_start_0
    iget-object v4, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 368
    .local v2, "indexOrStatus":I
    if-ltz v2, :cond_1

    .line 369
    const/4 v3, 0x0

    .line 370
    move v1, v2

    .line 381
    .end local v2    # "indexOrStatus":I
    :cond_0
    :goto_0
    new-instance v4, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueInputResult;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v1, v5}, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(IILcom/android/org/chromium/media/MediaCodecBridge$1;)V

    return-object v4

    .line 371
    .restart local v2    # "indexOrStatus":I
    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 372
    :try_start_1
    const-string v4, "MediaCodecBridge"

    const-string v5, "dequeueInputBuffer: MediaCodec.INFO_TRY_AGAIN_LATER"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v3, 0x1

    goto :goto_0

    .line 375
    :cond_2
    const-string v4, "MediaCodecBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected index_or_status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-boolean v4, Lcom/android/org/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    .end local v2    # "indexOrStatus":I
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MediaCodecBridge"

    const-string v5, "Failed to dequeue input buffer"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private dequeueOutputBuffer(J)Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;
    .locals 13
    .param p1, "timeoutUs"    # J

    .prologue
    .line 532
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 533
    .local v11, "info":Landroid/media/MediaCodec$BufferInfo;
    const/16 v2, 0x9

    .line 534
    .local v2, "status":I
    const/4 v3, -0x1

    .line 536
    .local v3, "index":I
    :try_start_0
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v11, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    .line 537
    .local v10, "indexOrStatus":I
    iget-wide v4, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v6, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 541
    iget-wide v4, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    iput-wide v4, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 543
    :cond_0
    iget-wide v4, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    if-ltz v10, :cond_2

    .line 546
    const/4 v2, 0x0

    .line 547
    move v3, v10

    .line 562
    .end local v10    # "indexOrStatus":I
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;

    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v5, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-wide v6, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJILcom/android/org/chromium/media/MediaCodecBridge$1;)V

    return-object v1

    .line 548
    .restart local v10    # "indexOrStatus":I
    :cond_2
    const/4 v1, -0x3

    if-ne v10, v1, :cond_3

    .line 549
    const/4 v2, 0x3

    goto :goto_0

    .line 550
    :cond_3
    const/4 v1, -0x2

    if-ne v10, v1, :cond_4

    .line 551
    const/4 v2, 0x4

    goto :goto_0

    .line 552
    :cond_4
    const/4 v1, -0x1

    if-ne v10, v1, :cond_5

    .line 553
    const/4 v2, 0x2

    goto :goto_0

    .line 555
    :cond_5
    :try_start_1
    const-string v1, "MediaCodecBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected index_or_status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-boolean v1, Lcom/android/org/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 558
    .end local v10    # "indexOrStatus":I
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v4, "Failed to dequeue output buffer"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private flush()I
    .locals 3

    .prologue
    .line 387
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 388
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 391
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Failed to flush MediaCodec"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    const/16 v1, 0x9

    goto :goto_0
.end method

.method private getAudioFormat(I)I
    .locals 1
    .param p1, "channelCount"    # I

    .prologue
    .line 722
    packed-switch p1, :pswitch_data_0

    .line 734
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 724
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 726
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 728
    :pswitch_3
    const/16 v0, 0xcc

    goto :goto_0

    .line 730
    :pswitch_4
    const/16 v0, 0xfc

    goto :goto_0

    .line 732
    :pswitch_5
    const/16 v0, 0x3fc

    goto :goto_0

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static getCodecsInfo()[Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;
    .locals 15

    .prologue
    .line 188
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v5, "encoderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v3, "decoderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;>;"
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    .line 191
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_4

    .line 192
    invoke-static {v6}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 193
    .local v7, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v4, 0x1

    .line 195
    .local v4, "direction":I
    :goto_1
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "codecString":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, "supportedTypes":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    array-length v11, v10

    if-ge v8, v11, :cond_3

    .line 198
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v9, v5

    .line 199
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;>;"
    :goto_3
    aget-object v11, v10, v8

    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 200
    aget-object v11, v10, v8

    new-instance v12, Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;

    aget-object v13, v10, v8

    const/4 v14, 0x0

    invoke-direct {v12, v13, v1, v4, v14}, Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/org/chromium/media/MediaCodecBridge$1;)V

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 193
    .end local v1    # "codecString":Ljava/lang/String;
    .end local v4    # "direction":I
    .end local v8    # "j":I
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;>;"
    .end local v10    # "supportedTypes":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v1    # "codecString":Ljava/lang/String;
    .restart local v4    # "direction":I
    .restart local v8    # "j":I
    .restart local v10    # "supportedTypes":[Ljava/lang/String;
    :cond_2
    move-object v9, v3

    .line 198
    goto :goto_3

    .line 191
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "codecString":Ljava/lang/String;
    .end local v4    # "direction":I
    .end local v7    # "info":Landroid/media/MediaCodecInfo;
    .end local v8    # "j":I
    .end local v10    # "supportedTypes":[Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v11

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v0, "codecInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;>;"
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;

    return-object v11
.end method

.method private static getDecoderNameForMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    .line 263
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 264
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 265
    .local v2, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "supportedTypes":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 271
    aget-object v5, v4, v3

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 277
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    .end local v3    # "j":I
    .end local v4    # "supportedTypes":[Ljava/lang/String;
    :goto_2
    return-object v5

    .line 270
    .restart local v2    # "info":Landroid/media/MediaCodecInfo;
    .restart local v3    # "j":I
    .restart local v4    # "supportedTypes":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 277
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    .end local v3    # "j":I
    .end local v4    # "supportedTypes":[Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private static getDefaultCodecName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "direction"    # I

    .prologue
    .line 218
    const-string v0, ""

    .line 219
    .local v0, "codecName":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "mediaCodec":Landroid/media/MediaCodec;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 223
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 227
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 234
    .end local v2    # "mediaCodec":Landroid/media/MediaCodec;
    :cond_0
    :goto_1
    return-object v0

    .line 225
    .restart local v2    # "mediaCodec":Landroid/media/MediaCodec;
    :cond_1
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MediaCodecBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultCodecName: Failed to create MediaCodec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", direction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getEncoderColorFormatsForMime(Ljava/lang/String;)[I
    .locals 7
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    .line 243
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 244
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 245
    .local v3, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_1

    .line 243
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "supportedTypes":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 250
    aget-object v6, v5, v4

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 249
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {v3, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 254
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v6, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 257
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v3    # "info":Landroid/media/MediaCodecInfo;
    .end local v4    # "j":I
    .end local v5    # "supportedTypes":[Ljava/lang/String;
    :goto_2
    return-object v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getInputBuffersCount()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    return v0
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getOutputBuffers()Z
    .locals 3

    .prologue
    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Cannot get output buffers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOutputBuffersCapacity()I
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getOutputBuffersCount()I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getOutputHeight()I
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 417
    .local v0, "format":Landroid/media/MediaFormat;
    invoke-direct {p0, v0}, Lcom/android/org/chromium/media/MediaCodecBridge;->outputFormatHasCropValues(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "crop-bottom"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "crop-top"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private getOutputWidth()I
    .locals 3

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 425
    .local v0, "format":Landroid/media/MediaFormat;
    invoke-direct {p0, v0}, Lcom/android/org/chromium/media/MediaCodecBridge;->outputFormatHasCropValues(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "crop-right"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "crop-left"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private isAdaptivePlaybackSupported(II)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 605
    iget-boolean v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    if-nez v1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x780

    if-gt p1, v1, :cond_0

    const/16 v1, 0x438

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private outputFormatHasCropValues(Landroid/media/MediaFormat;)Z
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 410
    const-string v0, "crop-right"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-left"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-bottom"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-top"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playOutputBuffer([B)J
    .locals 4
    .param p1, "buf"    # [B

    .prologue
    .line 682
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 683
    const-wide/16 v2, 0x0

    .line 702
    :goto_0
    return-wide v2

    .line 686
    :cond_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 687
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 690
    .local v0, "size":I
    array-length v1, p1

    if-eq v1, v0, :cond_2

    .line 691
    const-string v1, "MediaCodecBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send all data to audio output, expected size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_2
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0
.end method

.method private queueInputBuffer(IIIJI)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I

    .prologue
    .line 470
    invoke-direct {p0, p4, p5}, Lcom/android/org/chromium/media/MediaCodecBridge;->resetLastPresentationTimeIfNeeded(J)V

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 473
    :catch_0
    move-exception v7

    .line 474
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "MediaCodecBridge"

    const-string v1, "Failed to queue input buffer"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private queueSecureInputBuffer(II[B[B[I[IIJ)I
    .locals 12
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "iv"    # [B
    .param p4, "keyId"    # [B
    .param p5, "numBytesOfClearData"    # [I
    .param p6, "numBytesOfEncryptedData"    # [I
    .param p7, "numSubSamples"    # I
    .param p8, "presentationTimeUs"    # J

    .prologue
    .line 498
    move-wide/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/media/MediaCodecBridge;->resetLastPresentationTimeIfNeeded(J)V

    .line 500
    :try_start_0
    new-instance v2, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 501
    .local v2, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    const/4 v8, 0x1

    move/from16 v3, p7

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    .line 503
    iget-object v4, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    move v5, p1

    move v6, p2

    move-object v7, v2

    move-wide/from16 v8, p8

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    const/4 v3, 0x0

    .end local v2    # "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    :goto_0
    return v3

    .line 504
    :catch_0
    move-exception v11

    .line 505
    .local v11, "e":Landroid/media/MediaCodec$CryptoException;
    const-string v3, "MediaCodecBridge"

    const-string v4, "Failed to queue secure input buffer"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    invoke-virtual {v11}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 507
    const-string v3, "MediaCodecBridge"

    const-string v4, "MediaCodec.CryptoException.ERROR_NO_KEY"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v3, 0x7

    goto :goto_0

    .line 510
    :cond_0
    const-string v3, "MediaCodecBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaCodec.CryptoException with error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/16 v3, 0x9

    goto :goto_0

    .line 512
    .end local v11    # "e":Landroid/media/MediaCodec$CryptoException;
    :catch_1
    move-exception v11

    .line 513
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string v3, "MediaCodecBridge"

    const-string v4, "Failed to queue secure input buffer"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    const/16 v3, 0x9

    goto :goto_0
.end method

.method private release()V
    .locals 3

    .prologue
    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    .line 344
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 347
    :cond_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Cannot release media codec"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private releaseOutputBuffer(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "render"    # Z

    .prologue
    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Failed to release output buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestKeyFrameSoon()V
    .locals 3

    .prologue
    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 490
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 491
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 492
    return-void
.end method

.method private resetLastPresentationTimeIfNeeded(J)V
    .locals 5
    .param p1, "presentationTimeUs"    # J

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mFlushed:Z

    if-eqz v0, :cond_0

    .line 715
    const-wide/32 v0, 0x186a0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 719
    :cond_0
    return-void
.end method

.method private static setCodecSpecificData(Landroid/media/MediaFormat;I[B)V
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "index"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "name":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 632
    const-string v0, "csd-0"

    .line 636
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 637
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 639
    :cond_1
    return-void

    .line 633
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 634
    const-string v0, "csd-1"

    goto :goto_0
.end method

.method private static setFrameHasADTSHeader(Landroid/media/MediaFormat;)V
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 643
    const-string v0, "is-adts"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 644
    return-void
.end method

.method private setVideoBitrate(I)V
    .locals 2
    .param p1, "bps"    # I

    .prologue
    .line 482
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 483
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "video-bitrate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 485
    return-void
.end method

.method private setVolume(D)V
    .locals 3
    .param p1, "volume"    # D

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    double-to-float v1, p1

    double-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 711
    :cond_0
    return-void
.end method

.method private start()Z
    .locals 3

    .prologue
    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 354
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mInputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Cannot start the media codec"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 404
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 407
    :cond_0
    return-void
.end method
