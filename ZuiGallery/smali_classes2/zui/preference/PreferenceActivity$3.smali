.class Lzui/preference/PreferenceActivity$3;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lzui/preference/PreferenceActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lzui/preference/PreferenceActivity$3;->this$0:Lzui/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lzui/preference/PreferenceActivity$3;->this$0:Lzui/preference/PreferenceActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lzui/preference/PreferenceActivity;->setResult(I)V

    .line 95
    iget-object p1, p0, Lzui/preference/PreferenceActivity$3;->this$0:Lzui/preference/PreferenceActivity;

    invoke-virtual {p1}, Lzui/preference/PreferenceActivity;->finish()V

    return-void
.end method
