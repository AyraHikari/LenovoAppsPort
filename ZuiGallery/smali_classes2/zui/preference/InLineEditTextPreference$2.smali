.class Lzui/preference/InLineEditTextPreference$2;
.super Ljava/lang/Object;
.source "InLineEditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/InLineEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/InLineEditTextPreference;


# direct methods
.method constructor <init>(Lzui/preference/InLineEditTextPreference;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference$2;->this$0:Lzui/preference/InLineEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 76
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference$2;->this$0:Lzui/preference/InLineEditTextPreference;

    invoke-static {p1}, Lzui/preference/InLineEditTextPreference;->access$200(Lzui/preference/InLineEditTextPreference;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lzui/preference/InLineEditTextPreference;->access$102(Lzui/preference/InLineEditTextPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method
