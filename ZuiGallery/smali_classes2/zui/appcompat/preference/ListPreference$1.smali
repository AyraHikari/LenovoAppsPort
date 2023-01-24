.class Lzui/appcompat/preference/ListPreference$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/ListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/appcompat/preference/ListPreference;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/ListPreference;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lzui/appcompat/preference/ListPreference$1;->this$0:Lzui/appcompat/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 36
    iget-object v0, p0, Lzui/appcompat/preference/ListPreference$1;->this$0:Lzui/appcompat/preference/ListPreference;

    invoke-static {v0}, Lzui/appcompat/preference/ListPreference;->access$000(Lzui/appcompat/preference/ListPreference;)V

    return-void
.end method
