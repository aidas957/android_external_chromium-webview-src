.class Lcom/android/org/chromium/content/browser/input/GamepadList$LazyHolder;
.super Ljava/lang/Object;
.source "GamepadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/content/browser/input/GamepadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/org/chromium/content/browser/input/GamepadList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/android/org/chromium/content/browser/input/GamepadList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/chromium/content/browser/input/GamepadList;-><init>(Lcom/android/org/chromium/content/browser/input/GamepadList$1;)V

    sput-object v0, Lcom/android/org/chromium/content/browser/input/GamepadList$LazyHolder;->INSTANCE:Lcom/android/org/chromium/content/browser/input/GamepadList;

    return-void
.end method

.method static synthetic access$300()Lcom/android/org/chromium/content/browser/input/GamepadList;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/android/org/chromium/content/browser/input/GamepadList$LazyHolder;->INSTANCE:Lcom/android/org/chromium/content/browser/input/GamepadList;

    return-object v0
.end method
