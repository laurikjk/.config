set -l android_sdk /Users/l/Library/Android/sdk

if test -d "$android_sdk"
    set -gx ANDROID_HOME "$android_sdk"
    set -gx ANDROID_SDK_ROOT "$android_sdk"
    fish_add_path "$android_sdk/platform-tools"
end
