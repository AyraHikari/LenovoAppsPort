.class Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 109
    iget-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {p1}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->access$000(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)Z

    move-result p3

    iget-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->access$200(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    .line 110
    invoke-static {v1}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->access$100(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->access$002(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;Z)Z

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {p1}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->access$000(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)Z

    move-result p3

    iget-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->access$200(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    .line 113
    invoke-static {v1}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->access$100(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->access$002(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;Z)Z

    :goto_0
    return-void
.end method
