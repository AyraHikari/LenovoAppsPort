.class Lzui/preference/InLineEditTextPreference$1;
.super Ljava/lang/Object;
.source "InLineEditTextPreference.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


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

    .line 65
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference$1;->this$0:Lzui/preference/InLineEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 68
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference$1;->this$0:Lzui/preference/InLineEditTextPreference;

    invoke-static {v0}, Lzui/preference/InLineEditTextPreference;->access$000(Lzui/preference/InLineEditTextPreference;)V

    return-void
.end method
