.class Lcom/android/org/chromium/content/common/CleanupReference$LazyHolder;
.super Ljava/lang/Object;
.source "CleanupReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/content/common/CleanupReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field static final sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/android/org/chromium/content/common/CleanupReference$LazyHolder$1;

    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/chromium/content/common/CleanupReference$LazyHolder$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/org/chromium/content/common/CleanupReference$LazyHolder;->sHandler:Landroid/os/Handler;

    return-void
.end method