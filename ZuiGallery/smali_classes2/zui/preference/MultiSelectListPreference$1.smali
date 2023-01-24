.class Lzui/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lzui/preference/MultiSelectListPreference;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lzui/preference/MultiSelectListPreference$1;->this$0:Lzui/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 172
    iget-object p1, p0, Lzui/preference/MultiSelectListPreference$1;->this$0:Lzui/preference/MultiSelectListPreference;

    invoke-static {p1}, Lzui/preference/MultiSelectListPreference;->access$000(Lzui/preference/MultiSelectListPreference;)Z

    move-result p3

    iget-object v0, p0, Lzui/preference/MultiSelectListPreference$1;->this$0:Lzui/preference/MultiSelectListPreference;

    invoke-static {v0}, Lzui/preference/MultiSelectListPreference;->access$200(Lzui/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lzui/preference/MultiSelectListPreference$1;->this$0:Lzui/preference/MultiSelectListPreference;

    invoke-static {v1}, Lzui/preference/MultiSelectListPreference;->access$100(Lzui/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Lzui/preference/MultiSelectListPreference;->access$002(Lzui/preference/MultiSelectListPreference;Z)Z

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lzui/preference/MultiSelectListPreference$1;->this$0:Lzui/preference/MultiSelectListPreference;

    invoke-static {p1}, Lzui/preference/MultiSelectListPreference;->access$000(Lzui/preference/MultiSelectListPreference;)Z

    move-result p3

    iget-object v0, p0, Lzui/preference/MultiSelectListPreference$1;->this$0:Lzui/preference/MultiSelectListPreference;

    invoke-static {v0}, Lzui/preference/MultiSelectListPreference;->access$200(Lzui/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lzui/preference/MultiSelectListPreference$1;->this$0:Lzui/preference/MultiSelectListPreference;

    invoke-static {v1}, Lzui/preference/MultiSelectListPreference;->access$100(Lzui/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Lzui/preference/MultiSelectListPreference;->access$002(Lzui/preference/MultiSelectListPreference;Z)Z

    :goto_0
    return-void
.end method
