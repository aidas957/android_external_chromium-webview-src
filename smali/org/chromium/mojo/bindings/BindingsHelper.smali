.class public Lorg/chromium/mojo/bindings/BindingsHelper;
.super Ljava/lang/Object;
.source "BindingsHelper.java"


# static fields
.field public static final MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/Struct$DataHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    sput-object v0, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    return-void
.end method

.method public static align(J)J
    .locals 4
    .param p0, "size"    # J

    .prologue
    .line 76
    const-wide/16 v0, 0x8

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, -0x8

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 119
    :cond_0
    if-nez p0, :cond_1

    .line 120
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static getDefaultAsyncWaiterForHandle(Lorg/chromium/mojo/system/Handle;)Lorg/chromium/mojo/system/AsyncWaiter;
    .locals 1
    .param p0, "handle"    # Lorg/chromium/mojo/system/Handle;

    .prologue
    .line 183
    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/Core;->getDefaultAsyncWaiter()Lorg/chromium/mojo/system/AsyncWaiter;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
