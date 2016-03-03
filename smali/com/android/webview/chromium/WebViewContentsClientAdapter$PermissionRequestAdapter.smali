.class public Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;
.super Landroid/webkit/PermissionRequest;
.source "WebViewContentsClientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/webview/chromium/WebViewContentsClientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionRequestAdapter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static BITMASK_RESOURCE_AUDIO_CAPTURE:J

.field private static BITMASK_RESOURCE_PROTECTED_MEDIA_ID:J

.field private static BITMASK_RESOURCE_VIDEO_CAPTURE:J


# instance fields
.field private mAwPermissionRequest:Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

.field private mResources:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1054
    const-class v0, Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->$assertionsDisabled:Z

    .line 1056
    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->BITMASK_RESOURCE_VIDEO_CAPTURE:J

    .line 1057
    const-wide/16 v0, 0x4

    sput-wide v0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->BITMASK_RESOURCE_AUDIO_CAPTURE:J

    .line 1058
    const-wide/16 v0, 0x8

    sput-wide v0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->BITMASK_RESOURCE_PROTECTED_MEDIA_ID:J

    return-void

    .line 1054
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;)V
    .locals 1
    .param p1, "awPermissionRequest"    # Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    .prologue
    .line 1088
    invoke-direct {p0}, Landroid/webkit/PermissionRequest;-><init>()V

    .line 1089
    sget-boolean v0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1090
    :cond_0
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->mAwPermissionRequest:Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    .line 1091
    return-void
.end method

.method public static toAwPermissionResources([Ljava/lang/String;)J
    .locals 8
    .param p0, "resources"    # [Ljava/lang/String;

    .prologue
    .line 1061
    const-wide/16 v4, 0x0

    .line 1062
    .local v4, "result":J
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 1063
    .local v3, "resource":Ljava/lang/String;
    const-string v6, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1064
    sget-wide v6, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->BITMASK_RESOURCE_VIDEO_CAPTURE:J

    or-long/2addr v4, v6

    .line 1062
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1065
    :cond_1
    const-string v6, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1066
    sget-wide v6, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->BITMASK_RESOURCE_AUDIO_CAPTURE:J

    or-long/2addr v4, v6

    goto :goto_1

    .line 1067
    :cond_2
    const-string v6, "android.webkit.resource.PROTECTED_MEDIA_ID"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1068
    sget-wide v6, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->BITMASK_RESOURCE_PROTECTED_MEDIA_ID:J

    or-long/2addr v4, v6

    goto :goto_1

    .line 1070
    .end local v3    # "resource":Ljava/lang/String;
    :cond_3
    return-wide v4
.end method

.method private static toPermissionResources(J)[Ljava/lang/String;
    .locals 6
    .param p0, "resources"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 1074
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-wide v2, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->BITMASK_RESOURCE_VIDEO_CAPTURE:J

    and-long/2addr v2, p0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1076
    const-string v2, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    :cond_0
    sget-wide v2, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->BITMASK_RESOURCE_AUDIO_CAPTURE:J

    and-long/2addr v2, p0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1078
    const-string v2, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_1
    sget-wide v2, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->BITMASK_RESOURCE_PROTECTED_MEDIA_ID:J

    and-long/2addr v2, p0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1080
    const-string v2, "android.webkit.resource.PROTECTED_MEDIA_ID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 1082
    .local v0, "resource_array":[Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public deny()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->mAwPermissionRequest:Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->deny()V

    .line 1120
    return-void
.end method

.method public getOrigin()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->mAwPermissionRequest:Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getResources()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1100
    monitor-enter p0

    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->mResources:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->mAwPermissionRequest:Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->getResources()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->toPermissionResources(J)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->mResources:[Ljava/lang/String;

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->mResources:[Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public grant([Ljava/lang/String;)V
    .locals 4
    .param p1, "resources"    # [Ljava/lang/String;

    .prologue
    .line 1110
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->mAwPermissionRequest:Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->getResources()J

    move-result-wide v0

    .line 1111
    .local v0, "requestedResource":J
    invoke-static {p1}, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->toAwPermissionResources([Ljava/lang/String;)J

    move-result-wide v2

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 1112
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->mAwPermissionRequest:Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->grant()V

    .line 1115
    :goto_0
    return-void

    .line 1114
    :cond_0
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;->mAwPermissionRequest:Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->deny()V

    goto :goto_0
.end method
