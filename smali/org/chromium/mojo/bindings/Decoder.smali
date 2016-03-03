.class public Lorg/chromium/mojo/bindings/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/Decoder$Validator;
    }
.end annotation


# instance fields
.field private final mBaseOffset:I

.field private final mMessage:Lorg/chromium/mojo/bindings/Message;

.field private final mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/bindings/Message;)V
    .locals 4
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 106
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Decoder$Validator;-><init>(JI)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    .line 107
    return-void
.end method

.method private constructor <init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V
    .locals 2
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "validator"    # Lorg/chromium/mojo/bindings/Decoder$Validator;
    .param p3, "baseOffset"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    .line 111
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 112
    iput p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    .line 113
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    .line 114
    return-void
.end method

.method private validateBufferSize(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    .line 641
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 642
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Buffer is smaller than expected."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    return-void
.end method


# virtual methods
.method public readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .locals 8

    .prologue
    .line 121
    iget-object v3, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    int-to-long v4, v4

    iget v6, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 122
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    .line 123
    .local v2, "size":I
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    .line 124
    .local v0, "numFields":I
    if-gez v2, :cond_0

    .line 125
    new-instance v3, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v4, "Negative size. Unsigned integers are not valid for java."

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_0
    if-gez v0, :cond_1

    .line 129
    new-instance v3, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v4, "Negative number of fields. Unsigned integers are not valid for java."

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_1
    iget-object v3, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    iget v6, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v6, v2

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 135
    new-instance v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-direct {v1, v2, v0}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    .line 136
    .local v1, "res":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    return-object v1
.end method

.method public readInt(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 190
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 191
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public readLong(I)J
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 206
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 207
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
