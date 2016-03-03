.class public Lorg/chromium/android_webview/AwBrowserContext;
.super Ljava/lang/Object;
.source "AwBrowserContext.java"


# instance fields
.field private mFormDatabase:Lorg/chromium/android_webview/AwFormDatabase;

.field private mGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;

.field private mHttpAuthDatabase:Lorg/chromium/android_webview/HttpAuthDatabase;

.field private mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/chromium/android_webview/AwBrowserContext;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 34
    return-void
.end method


# virtual methods
.method public getFormDatabase()Lorg/chromium/android_webview/AwFormDatabase;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mFormDatabase:Lorg/chromium/android_webview/AwFormDatabase;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lorg/chromium/android_webview/AwFormDatabase;

    invoke-direct {v0}, Lorg/chromium/android_webview/AwFormDatabase;-><init>()V

    iput-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mFormDatabase:Lorg/chromium/android_webview/AwFormDatabase;

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mFormDatabase:Lorg/chromium/android_webview/AwFormDatabase;

    return-object v0
.end method

.method public getGeolocationPermissions()Lorg/chromium/android_webview/AwGeolocationPermissions;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lorg/chromium/android_webview/AwGeolocationPermissions;

    iget-object v1, p0, Lorg/chromium/android_webview/AwBrowserContext;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1}, Lorg/chromium/android_webview/AwGeolocationPermissions;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;

    return-object v0
.end method

.method public getHttpAuthDatabase(Landroid/content/Context;)Lorg/chromium/android_webview/HttpAuthDatabase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mHttpAuthDatabase:Lorg/chromium/android_webview/HttpAuthDatabase;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "http_auth.db"

    invoke-static {p1, v0}, Lorg/chromium/android_webview/HttpAuthDatabase;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/android_webview/HttpAuthDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mHttpAuthDatabase:Lorg/chromium/android_webview/HttpAuthDatabase;

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mHttpAuthDatabase:Lorg/chromium/android_webview/HttpAuthDatabase;

    return-object v0
.end method

.method public getKeyStore()Lorg/chromium/net/DefaultAndroidKeyStore;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lorg/chromium/net/DefaultAndroidKeyStore;

    invoke-direct {v0}, Lorg/chromium/net/DefaultAndroidKeyStore;-><init>()V

    iput-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwBrowserContext;->mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;

    return-object v0
.end method
