.class Lzui/appcompat/preference/ListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "ListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/appcompat/preference/ListPreferenceDialogFragment;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/appcompat/preference/ListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/ListPreferenceDialogFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment$1;->this$0:Lzui/appcompat/preference/ListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment$1;->this$0:Lzui/appcompat/preference/ListPreferenceDialogFragment;

    invoke-static {v0, p2}, Lzui/appcompat/preference/ListPreferenceDialogFragment;->access$002(Lzui/appcompat/preference/ListPreferenceDialogFragment;I)I

    .line 93
    iget-object p2, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment$1;->this$0:Lzui/appcompat/preference/ListPreferenceDialogFragment;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lzui/appcompat/preference/ListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
