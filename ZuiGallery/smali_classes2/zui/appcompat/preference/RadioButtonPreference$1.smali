.class Lzui/appcompat/preference/RadioButtonPreference$1;
.super Ljava/lang/Object;
.source "RadioButtonPreference.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/RadioButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/appcompat/preference/RadioButtonPreference;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/RadioButtonPreference;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lzui/appcompat/preference/RadioButtonPreference$1;->this$0:Lzui/appcompat/preference/RadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 20
    iget-object v0, p0, Lzui/appcompat/preference/RadioButtonPreference$1;->this$0:Lzui/appcompat/preference/RadioButtonPreference;

    invoke-static {v0}, Lzui/appcompat/preference/RadioButtonPreference;->access$000(Lzui/appcompat/preference/RadioButtonPreference;)V

    return-void
.end method
