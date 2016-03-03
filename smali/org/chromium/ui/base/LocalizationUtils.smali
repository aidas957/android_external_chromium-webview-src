.class public Lorg/chromium/ui/base/LocalizationUtils;
.super Ljava/lang/Object;
.source "LocalizationUtils.java"


# static fields
.field private static sIsLayoutRtl:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDisplayNameForLocale(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getJavaLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isLayoutRtl()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 53
    sget-object v2, Lorg/chromium/ui/base/LocalizationUtils;->sIsLayoutRtl:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 54
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 56
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getLayoutDirection(Landroid/content/res/Configuration;)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/chromium/ui/base/LocalizationUtils;->sIsLayoutRtl:Ljava/lang/Boolean;

    .line 61
    :cond_0
    sget-object v1, Lorg/chromium/ui/base/LocalizationUtils;->sIsLayoutRtl:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 56
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native nativeGetDurationString(J)Ljava/lang/String;
.end method

.method private static native nativeGetFirstStrongCharacterDirection(Ljava/lang/String;)I
.end method
