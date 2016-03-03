.class Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
.super Ljava/lang/Object;
.source "CoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/impl/CoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeCodeAndBufferResult"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mMojoResult:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/mojo/system/impl/CoreImpl$1;

    .prologue
    .line 450
    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;-><init>()V

    return-void
.end method


# virtual methods
.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 479
    iput-object p1, p0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->mBuffer:Ljava/nio/ByteBuffer;

    .line 480
    return-void
.end method

.method public setMojoResult(I)V
    .locals 0
    .param p1, "mojoResult"    # I

    .prologue
    .line 465
    iput p1, p0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->mMojoResult:I

    .line 466
    return-void
.end method
