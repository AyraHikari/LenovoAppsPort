.class Lzui/preference/SwitchPreferenceX$1;
.super Ljava/lang/Object;
.source "SwitchPreferenceX.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/SwitchPreferenceX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/SwitchPreferenceX;


# direct methods
.method constructor <init>(Lzui/preference/SwitchPreferenceX;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lzui/preference/SwitchPreferenceX$1;->this$0:Lzui/preference/SwitchPreferenceX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 50
    iget-object v0, p0, Lzui/preference/SwitchPreferenceX$1;->this$0:Lzui/preference/SwitchPreferenceX;

    invoke-static {v0}, Lzui/preference/SwitchPreferenceX;->access$000(Lzui/preference/SwitchPreferenceX;)V

    return-void
.end method
