.class Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;
.super Ljava/lang/Object;
.source "MediaCodecBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DequeueInputResult"
.end annotation


# instance fields
.field private final mIndex:I

.field private final mStatus:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "index"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;->mStatus:I

    .line 87
    iput p2, p0, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;->mIndex:I

    .line 88
    return-void
.end method

.method synthetic constructor <init>(IILorg/chromium/media/MediaCodecBridge$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/chromium/media/MediaCodecBridge$1;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(II)V

    return-void
.end method

.method private index()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;->mIndex:I

    return v0
.end method

.method private status()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;->mStatus:I

    return v0
.end method
