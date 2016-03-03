.class Lorg/chromium/android_webview/AwGeolocationPermissions$1;
.super Ljava/lang/Object;
.source "AwGeolocationPermissions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwGeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwGeolocationPermissions;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;

.field final synthetic val$finalAllowed:Z


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwGeolocationPermissions;Landroid/webkit/ValueCallback;Z)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lorg/chromium/android_webview/AwGeolocationPermissions$1;->this$0:Lorg/chromium/android_webview/AwGeolocationPermissions;

    iput-object p2, p0, Lorg/chromium/android_webview/AwGeolocationPermissions$1;->val$callback:Landroid/webkit/ValueCallback;

    iput-boolean p3, p0, Lorg/chromium/android_webview/AwGeolocationPermissions$1;->val$finalAllowed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/android_webview/AwGeolocationPermissions$1;->val$callback:Landroid/webkit/ValueCallback;

    iget-boolean v1, p0, Lorg/chromium/android_webview/AwGeolocationPermissions$1;->val$finalAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 102
    return-void
.end method
