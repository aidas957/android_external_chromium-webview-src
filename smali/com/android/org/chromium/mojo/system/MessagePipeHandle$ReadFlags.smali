.class public Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;
.super Lcom/android/org/chromium/mojo/system/Flags;
.source "MessagePipeHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/mojo/system/MessagePipeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/org/chromium/mojo/system/Flags",
        "<",
        "Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;->none()Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;->immutable()Lcom/android/org/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    sput-object v0, Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;->NONE:Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/org/chromium/mojo/system/Flags;-><init>(I)V

    .line 107
    return-void
.end method

.method public static none()Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;-><init>(I)V

    return-object v0
.end method
