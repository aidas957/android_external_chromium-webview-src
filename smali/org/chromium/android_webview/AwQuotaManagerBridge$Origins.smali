.class public Lorg/chromium/android_webview/AwQuotaManagerBridge$Origins;
.super Ljava/lang/Object;
.source "AwQuotaManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwQuotaManagerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Origins"
.end annotation


# instance fields
.field public final mOrigins:[Ljava/lang/String;

.field public final mQuotas:[J

.field public final mUsages:[J


# direct methods
.method constructor <init>([Ljava/lang/String;[J[J)V
    .locals 0
    .param p1, "origins"    # [Ljava/lang/String;
    .param p2, "usages"    # [J
    .param p3, "quotas"    # [J

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge$Origins;->mOrigins:[Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge$Origins;->mUsages:[J

    .line 48
    iput-object p3, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge$Origins;->mQuotas:[J

    .line 49
    return-void
.end method
