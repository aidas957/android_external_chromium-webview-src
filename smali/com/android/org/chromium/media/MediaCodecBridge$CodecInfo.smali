.class Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;
.super Ljava/lang/Object;
.source "MediaCodecBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodecInfo"
.end annotation


# instance fields
.field private final mCodecName:Ljava/lang/String;

.field private final mCodecType:Ljava/lang/String;

.field private final mDirection:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "codecType"    # Ljava/lang/String;
    .param p2, "codecName"    # Ljava/lang/String;
    .param p3, "direction"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;->mCodecType:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;->mCodecName:Ljava/lang/String;

    .line 113
    iput p3, p0, Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;->mDirection:I

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/org/chromium/media/MediaCodecBridge$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/org/chromium/media/MediaCodecBridge$1;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private codecName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;->mCodecName:Ljava/lang/String;

    return-object v0
.end method

.method private codecType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;->mCodecType:Ljava/lang/String;

    return-object v0
.end method

.method private direction()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/org/chromium/media/MediaCodecBridge$CodecInfo;->mDirection:I

    return v0
.end method
