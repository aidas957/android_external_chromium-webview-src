.class public final enum Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "AwSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

.field public static final enum NARROW_COLUMNS:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

.field public static final enum NORMAL:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

.field public static final enum SINGLE_COLUMN:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

.field public static final enum TEXT_AUTOSIZING:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->NORMAL:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .line 35
    new-instance v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    const-string v1, "SINGLE_COLUMN"

    invoke-direct {v0, v1, v3}, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .line 36
    new-instance v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    const-string v1, "NARROW_COLUMNS"

    invoke-direct {v0, v1, v4}, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .line 37
    new-instance v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    const-string v1, "TEXT_AUTOSIZING"

    invoke-direct {v0, v1, v5}, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    sget-object v1, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->NORMAL:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->$VALUES:[Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

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

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->$VALUES:[Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    invoke-virtual {v0}, [Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    return-object v0
.end method
