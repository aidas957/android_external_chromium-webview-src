.class public Lcom/android/webview/chromium/ContentSettingsAdapter;
.super Landroid/webkit/WebSettings;
.source "ContentSettingsAdapter.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/webview/chromium/ContentSettingsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/webview/chromium/ContentSettingsAdapter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/chromium/android_webview/AwSettings;)V
    .locals 0
    .param p1, "awSettings"    # Lcom/android/org/chromium/android_webview/AwSettings;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/webkit/WebSettings;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    .line 37
    return-void
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getAcceptThirdPartyCookies()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getAcceptThirdPartyCookies()Z

    move-result v0

    return v0
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getAllowContentAccess()Z

    move-result v0

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getAllowFileAccess()Z

    move-result v0

    return v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    return v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    return v0
.end method

.method getAwSettings()Lcom/android/org/chromium/android_webview/AwSettings;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    return-object v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getImagesEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getBlockNetworkLoads()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getCursiveFontFamily()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getDatabaseEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getDefaultFixedFontSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getDefaultFontSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getDefaultTextEncodingName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getDisplayZoomControls()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getDomStorageEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getFantasyFontFamily()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getFixedFontFamily()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getJavaScriptCanOpenWindowsAutomatically()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getJavaScriptEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 3

    .prologue
    .line 265
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    new-array v0, v1, [Landroid/webkit/WebSettings$LayoutAlgorithm;

    const/4 v1, 0x0

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    aput-object v2, v0, v1

    .line 271
    .local v0, "webViewValues":[Landroid/webkit/WebSettings$LayoutAlgorithm;
    iget-object v1, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwSettings;->getLayoutAlgorithm()Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->ordinal()I

    move-result v1

    aget-object v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 265
    .end local v0    # "webViewValues":[Landroid/webkit/WebSettings$LayoutAlgorithm;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getLoadsImagesAutomatically()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getMinimumFontSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getMinimumLogicalFontSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMixedContentMode()I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getMixedContentMode()I

    move-result v0

    return v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 1

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getPluginsEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getSansSerifFontFamily()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getSerifFontFamily()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getStandardFontFamily()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getTextZoom()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getUseWideViewPort()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/org/chromium/android_webview/AwSettings;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/webview/chromium/ContentSettingsAdapter;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVideoOverlayForEmbeddedEncryptedVideoEnabled()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getVideoOverlayForEmbeddedVideoEnabled()Z

    move-result v0

    return v0
.end method

.method public setAcceptThirdPartyCookies(Z)V
    .locals 1
    .param p1, "accept"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setAcceptThirdPartyCookies(Z)V

    .line 126
    return-void
.end method

.method public setAllowContentAccess(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setAllowContentAccess(Z)V

    .line 104
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setAllowFileAccess(Z)V

    .line 93
    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 433
    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 427
    return-void
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setAppCacheEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 0
    .param p1, "appCacheMaxSize"    # J

    .prologue
    .line 472
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "appCachePath"    # Ljava/lang/String;

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setAppCachePath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/org/chromium/android_webview/AwSettings;->setImagesEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    .line 398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setBlockNetworkLoads(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setBuiltInZoomControls(Z)V

    .line 71
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setCacheMode(I)V

    .line 581
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setCursiveFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setDatabaseEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 450
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setDefaultFixedFontSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setDefaultFontSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .locals 3
    .param p1, "zoom"    # Landroid/webkit/WebSettings$ZoomDensity;

    .prologue
    .line 190
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    if-eq p1, v0, :cond_0

    .line 191
    sget-object v0, Lcom/android/webview/chromium/ContentSettingsAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultZoom not supported, zoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setDisplayZoomControls(Z)V

    .line 82
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setDomStorageEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setFantasyFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setFixedFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 455
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setGeolocationEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 3
    .param p1, "l"    # Landroid/webkit/WebSettings$LayoutAlgorithm;

    .prologue
    .line 253
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    new-array v0, v1, [Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->NORMAL:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;

    aput-object v2, v0, v1

    .line 259
    .local v0, "chromiumValues":[Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;
    iget-object v1, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {p1}, Landroid/webkit/WebSettings$LayoutAlgorithm;->ordinal()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/org/chromium/android_webview/AwSettings;->setLayoutAlgorithm(Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 253
    .end local v0    # "chromiumValues":[Lcom/android/org/chromium/android_webview/AwSettings$LayoutAlgorithm;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 204
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1
    .param p1, "overview"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setLoadWithOverviewMode(Z)V

    .line 115
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setLoadsImagesAutomatically(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1
    .param p1, "require"    # Z

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 592
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setMinimumFontSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setMinimumLogicalFontSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMixedContentMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setMixedContentMode(I)V

    .line 602
    return-void
.end method

.method public setNavDump(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setShouldFocusFirstNode(Z)V

    .line 570
    return-void
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .locals 1
    .param p1, "state"    # Landroid/webkit/WebSettings$PluginState;

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setPluginsEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 0
    .param p1, "priority"    # Landroid/webkit/WebSettings$RenderPriority;

    .prologue
    .line 575
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setSansSerifFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 1
    .param p1, "save"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setSaveFormData(Z)V

    .line 159
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .param p1, "save"    # Z

    .prologue
    .line 169
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setSerifFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setStandardFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setSupportMultipleWindows(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setSupportZoom(Z)V

    .line 60
    return-void
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 1
    .param p1, "textZoom"    # I

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setTextZoom(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .param p1, "view"    # Z

    .prologue
    .line 147
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setUseWideViewPort(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 3
    .param p1, "ua"    # I

    .prologue
    .line 215
    monitor-enter p0

    if-nez p1, :cond_0

    .line 216
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/webview/chromium/ContentSettingsAdapter;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/webview/chromium/ContentSettingsAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserAgent not supported, ua="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVideoOverlayForEmbeddedEncryptedVideoEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwSettings;->setVideoOverlayForEmbeddedVideoEnabled(Z)V

    .line 612
    return-void
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->supportMultipleWindows()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/webview/chromium/ContentSettingsAdapter;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->supportZoom()Z

    move-result v0

    return v0
.end method
