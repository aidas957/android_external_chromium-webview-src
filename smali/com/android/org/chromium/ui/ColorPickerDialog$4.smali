.class Lcom/android/org/chromium/ui/ColorPickerDialog$4;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/ui/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/android/org/chromium/ui/OnColorChangedListener;I[Lcom/android/org/chromium/ui/ColorSuggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/ui/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/ui/ColorPickerDialog;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/org/chromium/ui/ColorPickerDialog$4;->this$0:Lcom/android/org/chromium/ui/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/chromium/ui/ColorPickerDialog$4;->this$0:Lcom/android/org/chromium/ui/ColorPickerDialog;

    # invokes: Lcom/android/org/chromium/ui/ColorPickerDialog;->showAdvancedView()V
    invoke-static {v0}, Lcom/android/org/chromium/ui/ColorPickerDialog;->access$300(Lcom/android/org/chromium/ui/ColorPickerDialog;)V

    .line 106
    return-void
.end method
