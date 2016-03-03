.class Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
.super Ljava/lang/Object;
.source "CoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/impl/CoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeCreationResult"
.end annotation


# instance fields
.field private mMojoHandle1:I

.field private mMojoHandle2:I

.field private mMojoResult:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/mojo/system/impl/CoreImpl$1;

    .prologue
    .line 564
    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public setMojoHandle1(I)V
    .locals 0
    .param p1, "mojoHandle1"    # I

    .prologue
    .line 594
    iput p1, p0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->mMojoHandle1:I

    .line 595
    return-void
.end method

.method public setMojoHandle2(I)V
    .locals 0
    .param p1, "mojoHandle2"    # I

    .prologue
    .line 608
    iput p1, p0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->mMojoHandle2:I

    .line 609
    return-void
.end method

.method public setMojoResult(I)V
    .locals 0
    .param p1, "mojoResult"    # I

    .prologue
    .line 580
    iput p1, p0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->mMojoResult:I

    .line 581
    return-void
.end method
