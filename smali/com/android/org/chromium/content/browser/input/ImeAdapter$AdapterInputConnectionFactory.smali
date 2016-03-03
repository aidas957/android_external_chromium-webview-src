.class public Lcom/android/org/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;
.super Ljava/lang/Object;
.source "ImeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/content/browser/input/ImeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterInputConnectionFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;Lcom/android/org/chromium/content/browser/input/ImeAdapter;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;)Lcom/android/org/chromium/content/browser/input/AdapterInputConnection;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lcom/android/org/chromium/content/browser/input/ImeAdapter;
    .param p3, "editable"    # Landroid/text/Editable;
    .param p4, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 169
    new-instance v0, Lcom/android/org/chromium/content/browser/input/AdapterInputConnection;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/content/browser/input/AdapterInputConnection;-><init>(Landroid/view/View;Lcom/android/org/chromium/content/browser/input/ImeAdapter;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;)V

    return-object v0
.end method
