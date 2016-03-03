.class public Lorg/chromium/content/browser/LocationProviderFactory;
.super Ljava/lang/Object;
.source "LocationProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;,
        Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sProviderImpl:Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/content/browser/LocationProviderFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/LocationProviderFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lorg/chromium/content/browser/LocationProviderFactory;->sProviderImpl:Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/content/browser/LocationProviderFactory;->sProviderImpl:Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;

    .line 49
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/LocationProviderFactory;->sProviderImpl:Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;

    return-object v0
.end method
