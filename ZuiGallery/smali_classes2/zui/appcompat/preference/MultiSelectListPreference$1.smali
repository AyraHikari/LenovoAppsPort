.class Lzui/appcompat/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/MultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/appcompat/preference/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/MultiSelectListPreference;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreference$1;->this$0:Lzui/appcompat/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 36
    iget-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreference$1;->this$0:Lzui/appcompat/preference/MultiSelectListPreference;

    invoke-static {v0}, Lzui/appcompat/preference/MultiSelectListPreference;->access$000(Lzui/appcompat/preference/MultiSelectListPreference;)V

    return-void
.end method
