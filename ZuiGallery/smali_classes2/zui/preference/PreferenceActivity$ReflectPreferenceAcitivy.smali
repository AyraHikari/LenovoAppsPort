.class Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;
.super Lzui/util/ReflectClass;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectPreferenceAcitivy"
.end annotation


# static fields
.field private static mInstance:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    invoke-direct {v0}, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;-><init>()V

    sput-object v0, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->mInstance:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.preference.PreferenceActivity"

    .line 173
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .line 182
    sget-object v0, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->mInstance:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "getHeaders"

    invoke-virtual {v0, v4, v2, v3, v1}, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 5

    .line 192
    sget-object v0, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->mInstance:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/widget/Button;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "getNextButton"

    invoke-virtual {v0, v4, v2, v3, v1}, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 5

    .line 187
    sget-object v0, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->mInstance:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "hasNextButton"

    invoke-virtual {v0, v4, v2, v3, v1}, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 178
    sget-object v0, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->mInstance:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    iput-object p1, v0, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->mRealObject:Ljava/lang/Object;

    return-void
.end method
