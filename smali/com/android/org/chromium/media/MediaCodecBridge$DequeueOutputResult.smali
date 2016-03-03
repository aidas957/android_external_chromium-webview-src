.class Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;
.super Ljava/lang/Object;
.source "MediaCodecBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DequeueOutputResult"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mIndex:I

.field private final mNumBytes:I

.field private final mOffset:I

.field private final mPresentationTimeMicroseconds:J

.field private final mStatus:I


# direct methods
.method private constructor <init>(IIIIJI)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "offset"    # I
    .param p5, "presentationTimeMicroseconds"    # J
    .param p7, "numBytes"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mStatus:I

    .line 143
    iput p2, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mIndex:I

    .line 144
    iput p3, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mFlags:I

    .line 145
    iput p4, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mOffset:I

    .line 146
    iput-wide p5, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mPresentationTimeMicroseconds:J

    .line 147
    iput p7, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mNumBytes:I

    .line 148
    return-void
.end method

.method synthetic constructor <init>(IIIIJILcom/android/org/chromium/media/MediaCodecBridge$1;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # J
    .param p7, "x5"    # I
    .param p8, "x6"    # Lcom/android/org/chromium/media/MediaCodecBridge$1;

    .prologue
    .line 132
    invoke-direct/range {p0 .. p7}, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJI)V

    return-void
.end method

.method private flags()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mFlags:I

    return v0
.end method

.method private index()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mIndex:I

    return v0
.end method

.method private numBytes()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mNumBytes:I

    return v0
.end method

.method private offset()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mOffset:I

    return v0
.end method

.method private presentationTimeMicroseconds()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mPresentationTimeMicroseconds:J

    return-wide v0
.end method

.method private status()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge$DequeueOutputResult;->mStatus:I

    return v0
.end method
