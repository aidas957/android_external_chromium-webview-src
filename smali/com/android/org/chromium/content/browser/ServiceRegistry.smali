.class public Lcom/android/org/chromium/content/browser/ServiceRegistry;
.super Ljava/lang/Object;
.source "ServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/browser/ServiceRegistry$ImplementationFactory;
    }
.end annotation


# instance fields
.field private final mCore:Lcom/android/org/chromium/mojo/system/Core;

.field private mNativeServiceRegistryAndroid:J


# direct methods
.method private constructor <init>(JLcom/android/org/chromium/mojo/system/Core;)V
    .locals 1
    .param p1, "nativeServiceRegistryAndroid"    # J
    .param p3, "core"    # Lcom/android/org/chromium/mojo/system/Core;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/android/org/chromium/content/browser/ServiceRegistry;->mNativeServiceRegistryAndroid:J

    .line 48
    iput-object p3, p0, Lcom/android/org/chromium/content/browser/ServiceRegistry;->mCore:Lcom/android/org/chromium/mojo/system/Core;

    .line 49
    return-void
.end method

.method private static create(J)Lcom/android/org/chromium/content/browser/ServiceRegistry;
    .locals 2
    .param p0, "nativeServiceRegistryAndroid"    # J

    .prologue
    .line 53
    new-instance v0, Lcom/android/org/chromium/content/browser/ServiceRegistry;

    invoke-static {}, Lcom/android/org/chromium/mojo/system/impl/CoreImpl;->getInstance()Lcom/android/org/chromium/mojo/system/Core;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/org/chromium/content/browser/ServiceRegistry;-><init>(JLcom/android/org/chromium/mojo/system/Core;)V

    return-object v0
.end method

.method private createImplAndAttach(ILcom/android/org/chromium/mojo/bindings/Interface$Manager;Lcom/android/org/chromium/content/browser/ServiceRegistry$ImplementationFactory;)V
    .locals 2
    .param p1, "nativeHandle"    # I
    .param p2, "manager"    # Lcom/android/org/chromium/mojo/bindings/Interface$Manager;
    .param p3, "factory"    # Lcom/android/org/chromium/content/browser/ServiceRegistry$ImplementationFactory;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/ServiceRegistry;->mCore:Lcom/android/org/chromium/mojo/system/Core;

    invoke-interface {v1, p1}, Lcom/android/org/chromium/mojo/system/Core;->acquireNativeHandle(I)Lcom/android/org/chromium/mojo/system/UntypedHandle;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/org/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lcom/android/org/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 68
    .local v0, "handle":Lcom/android/org/chromium/mojo/system/MessagePipeHandle;
    invoke-interface {p3}, Lcom/android/org/chromium/content/browser/ServiceRegistry$ImplementationFactory;->createImpl()Lcom/android/org/chromium/mojo/bindings/Interface;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/android/org/chromium/mojo/bindings/Interface$Manager;->bind(Lcom/android/org/chromium/mojo/bindings/Interface;Lcom/android/org/chromium/mojo/system/MessagePipeHandle;)V

    .line 69
    return-void
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/content/browser/ServiceRegistry;->mNativeServiceRegistryAndroid:J

    .line 59
    return-void
.end method

.method private native nativeAddService(JLcom/android/org/chromium/mojo/bindings/Interface$Manager;Lcom/android/org/chromium/content/browser/ServiceRegistry$ImplementationFactory;Ljava/lang/String;)V
.end method

.method private native nativeConnectToRemoteService(JLjava/lang/String;I)V
.end method

.method private native nativeRemoveService(JLjava/lang/String;)V
.end method
