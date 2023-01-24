.class Lzui/preference/SwitchPreference$1;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lzui/preference/SwitchPreference;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lzui/preference/SwitchPreference$1;->this$0:Lzui/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 39
    iget-object v0, p0, Lzui/preference/SwitchPreference$1;->this$0:Lzui/preference/SwitchPreference;

    invoke-static {v0}, Lzui/preference/SwitchPreference;->access$000(Lzui/preference/SwitchPreference;)V

    return-void
.end method
