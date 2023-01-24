.class final Lzui/appcompat/preference/PreferenceFragment$2;
.super Landroid/util/IntProperty;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lzui/appcompat/preference/PreferenceFragment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lzui/appcompat/preference/PreferenceFragment;)Ljava/lang/Integer;
    .locals 0

    .line 190
    invoke-static {p1}, Lzui/appcompat/preference/PreferenceFragment;->access$700(Lzui/appcompat/preference/PreferenceFragment;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, Lzui/appcompat/preference/PreferenceFragment;

    invoke-virtual {p0, p1}, Lzui/appcompat/preference/PreferenceFragment$2;->get(Lzui/appcompat/preference/PreferenceFragment;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 187
    check-cast p1, Lzui/appcompat/preference/PreferenceFragment;

    invoke-virtual {p0, p1, p2}, Lzui/appcompat/preference/PreferenceFragment$2;->setValue(Lzui/appcompat/preference/PreferenceFragment;I)V

    return-void
.end method

.method public setValue(Lzui/appcompat/preference/PreferenceFragment;I)V
    .locals 1

    .line 196
    invoke-static {p1}, Lzui/appcompat/preference/PreferenceFragment;->access$700(Lzui/appcompat/preference/PreferenceFragment;)I

    move-result v0

    sub-int v0, p2, v0

    .line 197
    invoke-static {p1, p2}, Lzui/appcompat/preference/PreferenceFragment;->access$702(Lzui/appcompat/preference/PreferenceFragment;I)I

    .line 198
    invoke-static {p1, p2}, Lzui/appcompat/preference/PreferenceFragment;->access$802(Lzui/appcompat/preference/PreferenceFragment;I)I

    const/4 p2, 0x0

    .line 200
    invoke-static {p1, v0, p2}, Lzui/appcompat/preference/PreferenceFragment;->access$600(Lzui/appcompat/preference/PreferenceFragment;IZ)V

    return-void
.end method
