.class Lzui/preference/RadioButtonPreference$1;
.super Ljava/lang/Object;
.source "RadioButtonPreference.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/RadioButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/RadioButtonPreference;


# direct methods
.method constructor <init>(Lzui/preference/RadioButtonPreference;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lzui/preference/RadioButtonPreference$1;->this$0:Lzui/preference/RadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 36
    iget-object v0, p0, Lzui/preference/RadioButtonPreference$1;->this$0:Lzui/preference/RadioButtonPreference;

    invoke-static {v0}, Lzui/preference/RadioButtonPreference;->access$000(Lzui/preference/RadioButtonPreference;)V

    return-void
.end method
