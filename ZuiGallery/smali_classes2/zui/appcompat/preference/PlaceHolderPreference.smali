.class public Lzui/appcompat/preference/PlaceHolderPreference;
.super Landroidx/preference/Preference;
.source "PlaceHolderPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lzui/appcompat/preference/PlaceHolderPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lzui/appcompat/preference/PlaceHolderPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/appcompat/preference/PlaceHolderPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    sget p1, Lzui/platform/R$layout;->preference_placeholder_zui:I

    invoke-virtual {p0, p1}, Lzui/appcompat/preference/PlaceHolderPreference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lzui/appcompat/preference/PlaceHolderPreference;->setSelectable(Z)V

    return-void
.end method
