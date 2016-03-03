.class Lorg/chromium/android_webview/AwGeolocationPermissions$2;
.super Ljava/lang/Object;
.source "AwGeolocationPermissions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwGeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwGeolocationPermissions;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;

.field final synthetic val$origins:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwGeolocationPermissions;Landroid/webkit/ValueCallback;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/chromium/android_webview/AwGeolocationPermissions$2;->this$0:Lorg/chromium/android_webview/AwGeolocationPermissions;

    iput-object p2, p0, Lorg/chromium/android_webview/AwGeolocationPermissions$2;->val$callback:Landroid/webkit/ValueCallback;

    iput-object p3, p0, Lorg/chromium/android_webview/AwGeolocationPermissions$2;->val$origins:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/chromium/android_webview/AwGeolocationPermissions$2;->val$callback:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lorg/chromium/android_webview/AwGeolocationPermissions$2;->val$origins:Ljava/util/Set;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
