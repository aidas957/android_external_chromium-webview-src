.class Lcom/android/org/chromium/mojo/system/impl/CoreImpl$LazyHolder;
.super Ljava/lang/Object;
.source "CoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/mojo/system/impl/CoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/org/chromium/mojo/system/Core;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/system/impl/CoreImpl;-><init>(Lcom/android/org/chromium/mojo/system/impl/CoreImpl$1;)V

    sput-object v0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$LazyHolder;->INSTANCE:Lcom/android/org/chromium/mojo/system/Core;

    return-void
.end method

.method static synthetic access$100()Lcom/android/org/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$LazyHolder;->INSTANCE:Lcom/android/org/chromium/mojo/system/Core;

    return-object v0
.end method
