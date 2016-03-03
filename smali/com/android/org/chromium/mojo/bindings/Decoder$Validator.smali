.class final Lcom/android/org/chromium/mojo/bindings/Decoder$Validator;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/mojo/bindings/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Validator"
.end annotation


# instance fields
.field private final mMaxMemory:J

.field private mMinNextClaimedHandle:I

.field private mMinNextMemory:J

.field private final mNumberOfHandles:J


# direct methods
.method constructor <init>(JI)V
    .locals 3
    .param p1, "maxMemory"    # J
    .param p3, "numberOfHandles"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/chromium/mojo/bindings/Decoder$Validator;->mMinNextClaimedHandle:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/mojo/bindings/Decoder$Validator;->mMinNextMemory:J

    .line 53
    iput-wide p1, p0, Lcom/android/org/chromium/mojo/bindings/Decoder$Validator;->mMaxMemory:J

    .line 54
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/org/chromium/mojo/bindings/Decoder$Validator;->mNumberOfHandles:J

    .line 55
    return-void
.end method


# virtual methods
.method public claimMemory(JJ)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 69
    const-wide/16 v0, 0x8

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/DeserializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect starting alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-wide v0, p0, Lcom/android/org/chromium/mojo/bindings/Decoder$Validator;->mMinNextMemory:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 73
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Trying to access memory out of order."

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    cmp-long v0, p3, p1

    if-gez v0, :cond_2

    .line 76
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Incorrect memory range."

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    iget-wide v0, p0, Lcom/android/org/chromium/mojo/bindings/Decoder$Validator;->mMaxMemory:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    .line 79
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Trying to access out of range memory."

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    invoke-static {p3, p4}, Lcom/android/org/chromium/mojo/bindings/BindingsHelper;->align(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/chromium/mojo/bindings/Decoder$Validator;->mMinNextMemory:J

    .line 82
    return-void
.end method
