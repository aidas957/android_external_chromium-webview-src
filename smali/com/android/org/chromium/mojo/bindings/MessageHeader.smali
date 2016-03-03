.class public Lcom/android/org/chromium/mojo/bindings/MessageHeader;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MESSAGE_WITH_REQUEST_ID_STRUCT_INFO:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

.field private static final SIMPLE_MESSAGE_STRUCT_INFO:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;


# instance fields
.field private final mDataHeader:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

.field private final mFlags:I

.field private mRequestId:J

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-class v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->$assertionsDisabled:Z

    .line 18
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    sput-object v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->SIMPLE_MESSAGE_STRUCT_INFO:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    .line 23
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    sput-object v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->MESSAGE_WITH_REQUEST_ID_STRUCT_INFO:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/org/chromium/mojo/bindings/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/android/org/chromium/mojo/bindings/Message;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p1}, Lcom/android/org/chromium/mojo/bindings/Decoder;-><init>(Lcom/android/org/chromium/mojo/bindings/Message;)V

    .line 77
    .local v0, "decoder":Lcom/android/org/chromium/mojo/bindings/Decoder;
    invoke-virtual {v0}, Lcom/android/org/chromium/mojo/bindings/Decoder;->readDataHeader()Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    .line 78
    iget-object v1, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    invoke-static {v1}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->validateDataHeader(Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;)V

    .line 79
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mType:I

    .line 80
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mFlags:I

    .line 81
    iget v1, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mFlags:I

    invoke-static {v1}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mustHaveRequestId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    iget v1, v1, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->size:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 83
    new-instance v1, Lcom/android/org/chromium/mojo/bindings/DeserializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect message size, expecting at least 24 for a message with a request identifier, but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    iget v3, v3, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    goto :goto_0
.end method

.method private static mustHaveRequestId(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 212
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateDataHeader(Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;)V
    .locals 3
    .param p0, "dataHeader"    # Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x2

    .line 219
    iget v0, p0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-ge v0, v1, :cond_0

    .line 220
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/DeserializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect number of fields, expecting at least 2, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget v0, p0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->size:I

    if-ge v0, v2, :cond_1

    .line 225
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/DeserializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect message size, expecting at least 16, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    iget v0, p0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->size:I

    if-eq v0, v2, :cond_2

    .line 231
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/DeserializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect message size for a message with 2 fields, expecting 16, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    iget v0, p0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->size:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    .line 238
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/DeserializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect message size for a message with 3 fields, expecting 24, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    if-ne p1, p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 188
    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 190
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 192
    check-cast v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;

    .line 193
    .local v0, "other":Lcom/android/org/chromium/mojo/bindings/MessageHeader;
    iget-object v3, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    iget-object v4, v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    invoke-static {v3, v4}, Lcom/android/org/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mFlags:I

    iget v4, v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mFlags:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    iget-wide v6, v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mType:I

    iget v4, v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mType:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getRequestId()J
    .locals 2

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->hasRequestId()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_0
    iget-wide v0, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    return-wide v0
.end method

.method public hasFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 119
    iget v0, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestId()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mFlags:I

    invoke-static {v0}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mustHaveRequestId(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 171
    const/16 v0, 0x1f

    .line 172
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 173
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 174
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mFlags:I

    add-int v1, v2, v3

    .line 175
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    iget-wide v6, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 176
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mType:I

    add-int v1, v2, v3

    .line 177
    return v1

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {v2}, Lcom/android/org/chromium/mojo/bindings/Struct$DataHeader;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method setRequestId(Ljava/nio/ByteBuffer;J)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # J

    .prologue
    .line 203
    sget-boolean v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mustHaveRequestId(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 205
    iput-wide p2, p0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    .line 206
    return-void
.end method
