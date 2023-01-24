.class final Lzui/preference/ListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/ListPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lzui/preference/ListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lzui/preference/ListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lzui/preference/ListPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lzui/preference/ListPreference$SavedState;
    .locals 1

    .line 341
    new-instance v0, Lzui/preference/ListPreference$SavedState;

    invoke-direct {v0, p1}, Lzui/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lzui/preference/ListPreference$SavedState$1;->newArray(I)[Lzui/preference/ListPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lzui/preference/ListPreference$SavedState;
    .locals 0

    .line 345
    new-array p1, p1, [Lzui/preference/ListPreference$SavedState;

    return-object p1
.end method
