.class public final enum Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "AwSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

.field public static final enum NARROW_COLUMNS:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

.field public static final enum NORMAL:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

.field public static final enum SINGLE_COLUMN:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

.field public static final enum TEXT_AUTOSIZING:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->NORMAL:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .line 35
    new-instance v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    const-string v1, "SINGLE_COLUMN"

    invoke-direct {v0, v1, v3}, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .line 36
    new-instance v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    const-string v1, "NARROW_COLUMNS"

    invoke-direct {v0, v1, v4}, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .line 37
    new-instance v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    const-string v1, "TEXT_AUTOSIZING"

    invoke-direct {v0, v1, v5}, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    sget-object v1, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->NORMAL:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->$VALUES:[Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->$VALUES:[Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    invoke-virtual {v0}, [Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    return-object v0
.end method
