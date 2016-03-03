.class final Lwebview/chromium/GeolocationPermissionsAdapter;
.super Landroid/webkit/GeolocationPermissions;
.source "GeolocationPermissionsAdapter.java"


# instance fields
.field private mChromeGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;


# direct methods
.method public constructor <init>(Lorg/chromium/android_webview/AwGeolocationPermissions;)V
    .locals 0
    .param p1, "chromeGeolocationPermissions"    # Lorg/chromium/android_webview/AwGeolocationPermissions;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/webkit/GeolocationPermissions;-><init>()V

    .line 35
    iput-object p1, p0, Lwebview/chromium/GeolocationPermissionsAdapter;->mChromeGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;

    .line 36
    return-void
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lwebview/chromium/GeolocationPermissionsAdapter;->mChromeGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwGeolocationPermissions;->allow(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lwebview/chromium/GeolocationPermissionsAdapter;->mChromeGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwGeolocationPermissions;->clear(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lwebview/chromium/GeolocationPermissionsAdapter;->mChromeGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwGeolocationPermissions;->clearAll()V

    .line 51
    return-void
.end method

.method public getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lwebview/chromium/GeolocationPermissionsAdapter;->mChromeGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/AwGeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 56
    return-void
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lwebview/chromium/GeolocationPermissionsAdapter;->mChromeGeolocationPermissions:Lorg/chromium/android_webview/AwGeolocationPermissions;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwGeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 61
    return-void
.end method
