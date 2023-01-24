.class Lzui/appcompat/preference/Preference$1;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/appcompat/preference/Preference;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/Preference;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lzui/appcompat/preference/Preference$1;->this$0:Lzui/appcompat/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 37
    iget-object v0, p0, Lzui/appcompat/preference/Preference$1;->this$0:Lzui/appcompat/preference/Preference;

    invoke-static {v0}, Lzui/appcompat/preference/Preference;->access$000(Lzui/appcompat/preference/Preference;)V

    return-void
.end method
