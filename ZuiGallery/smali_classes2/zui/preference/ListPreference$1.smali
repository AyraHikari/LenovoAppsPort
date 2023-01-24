.class Lzui/preference/ListPreference$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/preference/ListPreference;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/ListPreference;


# direct methods
.method constructor <init>(Lzui/preference/ListPreference;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lzui/preference/ListPreference$1;->this$0:Lzui/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 237
    iget-object v0, p0, Lzui/preference/ListPreference$1;->this$0:Lzui/preference/ListPreference;

    invoke-static {v0, p2}, Lzui/preference/ListPreference;->access$002(Lzui/preference/ListPreference;I)I

    .line 243
    iget-object p2, p0, Lzui/preference/ListPreference$1;->this$0:Lzui/preference/ListPreference;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lzui/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 244
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
